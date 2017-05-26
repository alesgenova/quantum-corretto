#! /usr/bin/env python3
import os
from f90_regex import *
from collections import OrderedDict
from default_type_definition import write_definition
from default_type_procedures import write_alloc, write_init, write_dealloc
tree_root = 0

class Use(object):
    typ = "Use"
    def __init__(self, module, quantities):
        self.module = module
        self.quantities = quantities


class Variable(object):
    typ = "Variable"
    def __init__(self, name, type_base,
                 type_extra=None, allocatable=None, dimension=None,
                 intent=None, pointer=None, target=None, default=None):
        self.name = name
        self.type_base = type_base
        self.type_extra = type_extra
        self.allocatable = allocatable
        self.dimension = dimension
        self.intent = intent
        self.pointer = pointer
        self.target = target
        self.default = default

class Line(object):
    typ = "Line"
    def __init__(self, input_string, fileobj_in):
        self.bare = ''
        self.code = []
        self.comment = []
        continue_line = True
        continuing = False
        #self.empty = False
        while continue_line:
            # preprocess
            try:
                code = re.match(r'(\s*#.*)$', input_string).group(0)
                comment = ''
            except:
                # Remove comments
                try:
                    code, comment = re.match(r'\s*(.*?)(\s*!.*)$', input_string).groups()
                except:
                    #pass
                    code = re.match(r'\s*(.*?)\s*$', input_string).group(1)
                    comment = ''

            # Concatenate continued lines
            try:
                code = re.match(r'^\s*(&)?\s*(.*?)(&)\s*$',code).group(2)
                input_string = fileobj_in.readline()
                continuing = True
            except:
                # account for empty line, we should continue to the next
                if continuing and len(code.strip()) == 0:
                    input_string = fileobj_in.readline()
                    code = ""
                else:
                    continuing = False
                    continue_line = False
                    code = re.match(r'^\s*(&)?\s*(.*?)(&)?\s*$',code).group(2)

            self.bare += code+' '
            self.code.append(code)
            self.comment.append(comment)
        self.empty = len(self.bare) < 2

class EmptyLine(Line):

    def __init__(self):
        self.bare = ''
        self.code = ['']
        self.comment = ['']

class Project(object):

    def __init__(self, name, root):
        self.name = name
        self.root = root
        self.tree_level = tree_root
        self.sources = {}

    def add_sourcefile(self, filename):
        #self.sources.append(Sourcefile(filename))
        if filename in self.sources:
            print("WARNING, source file {} is being read twice.".format(filename))
        shortdir = os.path.relpath(os.path.dirname(filename), start=self.root)+"/"
        name = shortdir+os.path.split(filename)[1]
        self.sources[name]=Sourcefile(shortdir, name, filename, self)

    def scan_sources(self):
        for key, src in self.sources.items():
            #print('Scanning', src.name)
            src.scan()

    def make_project_tree(self):
        print('PROJECT '+self.name)
        for key, src in self.sources.items():
            print('  |')
            src.print_contains()

    def locate(self, name):
        location_ = []
        if name in self.sources:
            return self.sources[name], location_
        for key, src in self.sources.items():
            #print('Scanning', src.name)
            block, location = src.locate(name, location_)
            if block is not None:
                return block, location
        return None, None

    def get_blocktypes(self, typ):
        blocks = []
        if typ == "Procedure":
            typ = ["Subroutine","Function"]
        else:
            typ = [typ]
        for key, src in self.sources.items():
            #if isinstance(src, class_obj):
            if src.typ in typ:
                blocks.append(src)
            else:
                blocks.extend(src.get_blocktypes(typ))

        if len(blocks) > 0: return blocks


        return blocks



class Codeblock(object):

    def __init__(self,name):
        self.name = name.lower()
        self.preprocesses = OrderedDict()
        self.contains = OrderedDict()
        self.uses = OrderedDict()
        self.declares = OrderedDict()
        self.datatypes = OrderedDict()
        self.lines = []
        self.patched_name = ''
        self.typ = ''
        self.location = {"project":None,
                        "file":None,
                        "module":None,
                        "procedure":None}

    def add_uses(self, modulename, variables):
        self.uses[modulename], trash = str_to_arg(variables)
        #self.imports.add_module(modulename,variables)

    def add_preprocess(self,obj):
        self.preprocesses[obj.name] = obj

    def add_contains(self,obj):
        self.contains[obj.name] = obj

    def add_datatype(self, datatype):
        if self.typ not in ["Module","Preprocess"]:
            print("WARNING, the datatype {} is being defined outside a module ({} {}).".format(datatype.name,self.typ, self.name))
        self.datatypes[datatype.name] = datatype

    def print_contains(self):
        print('   '*self.tree_level+'---- '+self.__str__())
        #self.print_contains()
        for obj_ in self.contains:
            obj = self.contains[obj_]
            print('   '*self.tree_level+'   |')
            #print ('---'*obj.tree_level,obj.typ,obj.name)
            obj.print_contains()

    def locate(self, name, location_=[]):
        if name in self.contains:
            return self.contains[name], location_+[self.name]
        for key, src in self.contains.items():
            location = location_+[self.name]
            block, location = src.locate(name, location)
            if block is not None:
                return block, location
        return None, None

    def get_blocktypes(self, typ):
        blocks = []
        for key, obj in self.contains.items():
            #if isinstance(obj, class_obj):
            if obj.typ in typ:
                blocks.append(obj)
            else:
                blocks.extend(obj.get_blocktypes(typ))
        return blocks

    def __str__(self):
        return "{} {}".format(self.typ, self.name)


class Preprocess(Codeblock):

    def __init__(self, name, parent):
        super().__init__(name)
        self.typ = 'Preprocess'
        self.parent = parent
        self.startstatement = None
        self.endstatement = None
        self.tree_level = parent.tree_level + 1

    def set_startstatement(self, string):
        self.startstatement = string

    def set_endstatement(self, string):
        self.endstatement = string

    def write_preprocess(self, f):
        f.write("\n")
        if self.startstatement is not None:
            f.write(self.startstatement + "\n")
        write_definition(self, f)
        if self.endstatement is not None:
            f.write(self.endstatement + "\n")


class Sourcefile(Codeblock):

    def __init__(self, shortdir, name, fullname, parent):
        super().__init__(name)
        self.fullname = fullname
        self.parent = parent
        self.tree_level = tree_root
        self.typ = 'Sourcefile'
        self.shortdir = shortdir
        self.tree_level = parent.tree_level + 1
        self.name = name

    def __str__(self):
        return 'FILE '+self.name

    def scan(self):
        context = []
        context.append(self)
        location = self.location.copy()
        location['file'] = self
        with open(self.fullname,'r') as src:
            print(self.name)
            for line in src:

                line = Line(line,src)
                #self.lines.append(Line(line,src))

                # Parse line to update context
                # (i.e. are we entering a new module/routine/function?)
                if len(line.bare.strip()) > 0 :
                    output = line_to_context(line, context, location)
                    #if isinstance(context[-1], Module):
                    #    location['module'] = context[-1]
                    #elif isinstance(context[-1], Procedure):
                    #    location['procedure'] = context[-1]
                    #print(location)
                    #print(output,context)
                    if abs(output) == 1:
                        pass
                        #print(self.lines[-1].bare)
                        #print(output, context)
                    if  not output == 0 and not output == 1 :
                        pass
                        #print('WARNING: ',line)

    def print_source(self):
        for line in self.lines:
            npartial = len(line.code)
            if npartial > 1:
                for ipar, code in enumerate(line.code):
                    if ipar < npartial -1:
                        print( code + ' & ' + line.comment[ipar])
                    else:
                        print( code + line.comment[ipar])

            else:
                print (line.code[0] +' '+ line.comment[0])

    def print_bare_source(self):
        for line in self.lines:
            if not line.empty:
                print(line.bare)


class Procedure(Codeblock):

    def __init__(self, name, argstring, parent):
        super().__init__(name)
        self.parent = parent
        self.tree_level = parent.tree_level + 1
        self.args, self.argstring = str_to_arg(argstring)


class Subroutine(Procedure):

    def __init__(self,name,argstring,parent):
        super().__init__(name, argstring, parent)
        self.typ = 'Subroutine'

    def __str__(self):
        return 'SUBROUTINE '+self.name+' ('+self.argstring+')'


class Function(Procedure):

    def __init__(self,name,argstring,parent):
        super().__init__(name, argstring, parent)
        self.typ = 'Function'

    def __str__(self):
        return 'FUNCTION '+self.name+' ('+self.argstring+')'


class Module(Codeblock):

    def __init__(self,name,parent):
        super().__init__(name)
        self.parent = parent
        self.tree_level = parent.tree_level + 1
        self.typ = 'Module'

    def patch(self):
        #obj = self.copy()
        #obj.name = self.name+"_patched"
        #obj.lines = []
        project = get_project(self)
        for line in self.lines:
            if line.typ == "Use":
                _check_proper_use(line, self, project)
                #break

    def objectify(self):
        self.patched_name = self.name#+"_module"
        if len(self.datatypes) > 0 :
            #directory = self.parent.shortdir+"autogenerated/"
            #skip_module_file = "./{}skip_modules.txt".format(directory)
            print("WARNING, the module '{}' already declares Datatypes, applying extra care.".format(self.name))
            #with open(skip_module_file, "a") as f:
            #    f.write(self.name+"\n")
            for key, datatype in self.datatypes.items():
                if key == self.patched_name:
                    print("WARNING, the module '{}' already declares the {} Datatype.".format(self.name, key))
                    datatype.patched_name = datatype.name+"_legacy"
        directory = self.parent.shortdir+"autogenerated/"
        definition_file = "./{}{}_definition.f90".format(directory, self.name)
        procedures_file = "./{}{}_procedures.f90".format(directory, self.name)
        #print(definition_file)
        #print(procedures_file)
        with open(definition_file,"w") as f:
            # the datatype definition
            procedures = write_definition(self,f)

        if False:
            with open(procedures_file,"w") as f:
                # the default procedure list
                f.write(str(procedures)+"\n\n")
                # the alloc blueprint
                write_alloc(self,f)
                # the init blueprint
                write_init(self,f)
                # the dealloc blueprint
                write_dealloc(self,f)


    def locate(self, name, location_=[]):
        block, location = super().locate(name, location_)
        if block is not None:
            return block, location
        if name in self.declares:
            return self.declares[name], location_+[self.name]
        if name in self.datatypes:
            return self.datatypes[name], location_+[self.name]
        return None, None


class Datatype(Codeblock):
    def __init__(self,name,parent):
        super().__init__(name)
        self.parent = parent
        if parent is None:
            self.tree_level = tree_root
        else:
            self.tree_level = parent.tree_level + 1
        self.typ = 'Datatype'

def parse_declaration(context,mo):
    #if context.typ not in ["Module", "Datatype", "Preprocess"]: return

    type_base = mo.group('type_base').strip() if mo.group('type_base') else ""
    type_base = type_base.lower() if len(type_base.strip()) > 0 else None

    type_extra = mo.group('type_extra').strip() if mo.group('type_extra') else ""
    type_extra = type_extra.lower() if len(type_extra) > 0 else None

    options = mo.group('options').strip() if mo.group('options') else ""
    options = options if len(options) > 0 else None

    variables = mo.group('vars').strip() if mo.group('vars') else ""
    variables = variables if len(variables) > 0 else None

    #print(type_base, type_extra, options, variables)
    attributes = _parse_declaration_options(options)
    var_list = _parse_declaration_variables(variables, type_base, type_extra, attributes)

    for var in var_list:
        var_name = var.name
        if var_name in context.declares:
            print("WARNING, variable {} in module {} is being declared twice.".format(var_name,context.name))
        context.declares[var_name] = var
        context.lines.append(var)
    #context.declares.extend(var_list)
    return

def _parse_declaration_options(options):
    attributes = {"allocatable":None, "dimension":None, "intent":None , "pointer":None, "target":None}
    if options is None: return attributes
    leftover = options
    mo = options_rgx.match(leftover)
    while mo is not None:
        option = mo.group('option')
        sli = mo.group('slice')
        if option is not None:
            if option.lower() in ['allocatable', 'pointer', 'target']:
                attributes[option.lower()] = True
            elif option.lower() == "dimension":
                attributes["dimension"] = sli.strip().lower()
            elif option.lower() == "intent":
                attributes["intent"] = sli.strip().lower()
        #print(mo.group(0))
        leftover = leftover[len(mo.group(0)):]
        mo = options_rgx.match(leftover)
    #print(attributes)
    return attributes

def _parse_declaration_variables(variables, type_base, type_extra, attributes):
        var_list = []
        leftover = variables
        mo = vars_rgx.match(variables)
        while mo is not None:
            #var_dict = OrderedDict()
            #var_dict['name'] = mo.group('variable')
            #var_dict['type_base'] = type_base
            #var_dict['type_extra'] = type_extra
            #var_dict['allocatable'] = attributes['allocatable']
            #var_dict['dimension'] = attributes['dimension']
            #var_dict['intent'] = attributes['intent']
            #var_dict['pointer'] = attributes['pointer']
            #var_dict['target'] = attributes['target']
            #var_dict['default'] = mo.group('assign').lower() if mo.group('assign') else None
            #if mo.group('slice') is not None:
            #    var_dict['dimension'] = mo.group('slice').strip()
            #var_list.append(var_dict)
            name = mo.group('variable')
            allocatable = attributes['allocatable']
            dimension = attributes['dimension']
            intent = attributes['intent']
            pointer = attributes['pointer']
            target = attributes['target']
            default = mo.group('assign').lower() if mo.group('assign') else None
            if mo.group('slice') is not None:
                dimension = mo.group('slice').strip()
            var = Variable(name=name, type_base=type_base, type_extra=type_extra, allocatable=allocatable,
                           dimension=dimension, intent=intent, pointer=pointer, target=target, default=default)
            var_list.append(var)
            #print(mo.group(0))
            leftover = leftover[len(mo.group('subtract')):]
            mo = vars_rgx.match(leftover)
        #print()
        #for var in var_list:
        #    print(var)
        #    print()
        return var_list


def get_project(codeblock):
    tree_level = codeblock.tree_level
    project = codeblock
    while tree_level > tree_root:
        project = project.parent
        tree_level = project.tree_level
    return project


def _check_proper_use(use, codeblock, project):
    module, trash = project.locate(use.module)
    if module is None:
        print("WARNING, module {} couldn't be located in the project".format(use.module))
        return
    print(use.module, use.quantities)
    if use.quantities is None:
        print("WARNING, using all the quantities from the module {}".format(module.name))
        return
    for q in use.quantities:
        quantity, trash = module.locate(q)
        if quantity is None:
            print("WARNING, quantity {} couldn't be located in module {}".format(q, module.name))
            return
            print(quantity.typ)


def str_to_arg(string):
    if string is None:
        return None, ''
    args = args_rgx.findall(string)
    argstring = ''
    nargs = len(args)
    if nargs == 0 :
        return None, ''
    else :
        for iarg, arg in enumerate(args):
            if iarg < nargs-1:
                argstring += arg+', '
            else:
                argstring += arg
        return args, argstring
    #return args, argstring if len(args) > 0 else None, None


def line_to_context(line_obj, context, location):

    curr_context = context[-1]
    line = line_obj.bare

    chk = 0

    #print(line)

    # CHECK single line PREPROCESS (include|define)
    mo = ppsl_rgx.match(line)
    if mo is not None:
        context.append(Preprocess(mo.group(0).lower(),curr_context))
        context[-1].set_startstatement(mo.group(0).lower())
        curr_context.add_preprocess(context[-1])
        context.pop()
        return chk

    # CHECK PREPROCESS IF
    mo = ppif_rgx.match(line)
    if mo is not None:
        context.append(Preprocess(mo.group(0).lower(),curr_context))
        context[-1].set_startstatement(mo.group(0).lower())
        curr_context.add_preprocess(context[-1])
        return chk

    # CHECK PREPROCESS ELSE, ELIF
    mo = ppelse_rgx.match(line)
    if mo is not None:
        context.pop()
        curr_context = context[-1]
        context.append(Preprocess(mo.group(0).lower(),curr_context))
        context[-1].set_startstatement(mo.group(0).lower())
        curr_context.add_preprocess(context[-1])
        return chk

    # CHECK PREPROCESS ENDIF
    mo = ppendif_rgx.match(line)
    if mo is not None:
        curr_context.set_endstatement(mo.group(0).lower())
        context.pop()
        return chk


    # CHECK USE STATEMENTS
    mo = use_rgx.match(line)
    if mo is not None:
        #chk += 1
        vars_list, trash = str_to_arg(mo.group(2))
        use = Use(mo.group(1), vars_list)
        curr_context.add_uses(mo.group(1), mo.group(2))
        curr_context.lines.append(use)
        return chk

    # CHECK DECLARATION STATEMENTS
    mo = declaration_rgx.match(line)
    if mo is not None:
        #chk += 1
        if mo.group('type_base').strip().lower() == "type" and mo.group('type_extra') is None:
            pass
        else:
            parse_declaration(curr_context,mo)
            return chk

    # CHECK NEW SUBROUTINE
    mo = subroutine_rgx.match(line)
    if mo is not None:
        chk += 1
        subroutine = Subroutine(mo.group(1).lower(), mo.group(2),curr_context)
        context.append(subroutine)
        curr_context.add_contains(subroutine)
        curr_context.lines.append(subroutine)
        return chk


    # CHECK END SUBROUTINE
    mo = endsubroutine_rgx.match(line)
    if mo is not None:
        chk -= 1
        try:
            check = mo.group(1).lower() == curr_context.name
            end_name = mo.group(1).lower()
        except AttributeError:
            check = False
            end_name = "None"
        if not check:
            pass
            #print('WARNING: ',end_name, curr_context.name, line)
        #print(context[-1])
        context.pop()
        location['procedure'] = None
        return chk

    # CHECK NEW FUNCTION
    mo = function_rgx.match(line)
    if mo is not None:
        chk += 1
        function = Function(mo.group(1).lower(), mo.group(2),curr_context)
        context.append(function)
        curr_context.add_contains(function)
        curr_context.lines.append(function)
        return chk

    # CHECK END FUNCTION
    mo = endfunction_rgx.match(line)
    if mo is not None:
        chk -= 1
        #print(context[-1])
        context.pop()
        location['procedure'] = None
        return chk


    # CHECK NEW TYPE
    mo = type_rgx.match(line)
    if mo is not None:
        print(line)
        chk += 1
        datatype = Datatype(mo.group("name").lower(),curr_context)
        context.append(datatype)
        curr_context.add_datatype(datatype)
        curr_context.lines.append(datatype)
        return chk

    # CHECK END TYPE
    mo = endtype_rgx.match(line)
    if mo is not None:
        chk -= 1
        #print(context[-1])
        context.pop()
        #location['datatype'] = None
        return chk

    # CHECK NEW MODULE
    mo = module_rgx.match(line)
    if mo is not None:
        chk += 1
        module = Module(mo.group(1).lower(),curr_context)
        context.append(module)
        curr_context.add_contains(module)
        curr_context.lines.append(module)
        return chk

    # CHECK END MODULE
    mo = endmodule_rgx.match(line)
    if mo is not None:
        chk -= 1
        #print(context[-1])
        context.pop()
        location['module'] = None
        return chk

    curr_context.lines.append(line_obj)

    return chk


if __name__ == "__main__":
    import sys
    sources  = [sys.argv[1]]
    project = Project('Test')
    for fil in sources:
        project.add_sourcefile(fil)
    project.scan_sources()
    project.make_project_tree()
