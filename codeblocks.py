#! /usr/bin/env python3
import os
from f90_regex import *
from collections import OrderedDict
tree_root = 1

class Line(object):

    def __init__(self, input_string, fileobj_in):
        self.bare = ''
        self.code = []
        self.comment = []
        continue_line = True
        continuing = False
        #self.empty = False
        while continue_line:
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
        self.sources = {}

    def add_sourcefile(self, filename):
        #self.sources.append(Sourcefile(filename))
        if filename in self.sources:
            print("Warning, source file {} is being read twice.".format(filename))
        shortdir = os.path.relpath(os.path.dirname(filename), start=self.root)+"/"
        name = shortdir+os.path.split(filename)[1]
        self.sources[name]=Sourcefile(shortdir, name, filename)

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

    def get_blocktypes(self, class_obj):
        blocks = []
        for key, src in self.sources.items():
            if isinstance(src, class_obj):
                blocks.append(src)
            else:
                blocks.extend(src.get_blocktypes(class_obj))

        if len(blocks) > 0: return blocks


        return blocks



class Codeblock(object):

    def __init__(self,name):
        self.name = name.lower()
        self.contains = OrderedDict()
        self.imports = OrderedDict()
        self.typ = ''
        self.location = {"project":None,
                        "file":None,
                        "module":None,
                        "procedure":None}

    def add_import(self, modulename, variables):
        self.imports[modulename], trash = str_to_arg(variables)
        #self.imports.add_module(modulename,variables)

    def add_contains(self,obj):
        self.contains[obj.name] = obj

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

    def get_blocktypes(self, class_obj):
        blocks = []
        for key, obj in self.contains.items():
            if isinstance(obj, class_obj):
                blocks.append(obj)
            else:
                blocks.extend(obj.get_blocktypes(class_obj))
        return blocks

    def __str__(self):
        return "{} {}".format(self.typ, self.name)


class Sourcefile(Codeblock):

    def __init__(self, shortdir, name, fullname):
        super().__init__(name)
        self.fullname = fullname
        self.parent = None
        self.tree_level = tree_root
        self.typ = 'Sourcefile'
        self.shortdir = shortdir
        self.name = name
        self.lines = []

    def __str__(self):
        return 'FILE '+self.name

    def add_line(self, string, fileobj):
        self.lines.append(Line(string,fileobj))

    def scan(self):
        context = []
        context.append(self)
        location = self.location.copy()
        location['file'] = self
        with open(self.fullname,'r') as src:
            print(self.name)
            for line in src:

                self.lines.append(Line(line,src))

                # Parse line to update context
                # (i.e. are we entering a new module/routine/function?)

                if len(self.lines[-1].bare) > 0 :
                    output = line_to_context(self.lines[-1].bare, context, location)
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
        self.declarations = {}
        self.typ = 'Module'

    def objectify(self):
        print("type :: {}_type".format(self.name))
        for key, var in self.declarations.items():
            string = "  "+var['type_base']
            if var['type_extra'] is not None: string += "({})".format(var['type_extra'])
            if var['allocatable']: string += ", allocatable"
            if var['dimension'] is not None: string += ", dimension({})".format(var['dimension'])
            if var['pointer']: string += ", pointer"
            string += ", target :: "
            string += var['name']
            if var['default'] is not None: string += " = {}".format(var['default'])
            print (string)
        print("end type {}_type".format(self.name))


    def locate(self, name, location_=[]):
        block, location = super().locate(name, location_)
        if block is not None:
            return block, location
        if name in self.declarations:
            return self.declarations[name], location_+[self.name]
        return None, None

    def __str__(self):
        return 'MODULE '+self.name

class Quantity(Codeblock):

    def __init__(name):
        super().__init__(name)
        self.parent = parent
        self.tree_level = parent.tree_level + 1
        self.declarations = []
        self.typ = 'Quantity'


def parse_declaration(context,mo):
    if context.typ != "Module": return

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
        var_name = var['name']
        if var_name in context.declarations:
            print("Warning, variable {} in module {} is being declared twice.".format(var_name,context.name))
        context.declarations[var_name] = var
    #context.declarations.extend(var_list)
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
            var_dict = OrderedDict()
            var_dict['name'] = mo.group('variable')
            var_dict['type_base'] = type_base
            var_dict['type_extra'] = type_extra
            var_dict['allocatable'] = attributes['allocatable']
            var_dict['dimension'] = attributes['dimension']
            var_dict['intent'] = attributes['intent']
            var_dict['pointer'] = attributes['pointer']
            var_dict['target'] = attributes['target']
            var_dict['default'] = mo.group('assign').lower() if mo.group('assign') else None
            if mo.group('slice') is not None:
                var_dict['dimension'] = mo.group('slice').strip()
            var_list.append(var_dict)
            #print(mo.group(0))
            leftover = leftover[len(mo.group('subtract')):]
            mo = vars_rgx.match(leftover)
        #print()
        #for var in var_list:
        #    print(var)
        #    print()
        return var_list

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


def line_to_context(line, context, location):

    curr_context = context[-1]

    chk = 0

    #print(line)

    # CHECK USE STATEMENTS
    mo = use_rgx.match(line)
    if mo is not None:
        #chk += 1
        curr_context.add_import(mo.group(1), mo.group(2))
        return chk

    # CHECK DECLARATION STATEMENTS
    mo = declaration_rgx.match(line)
    if mo is not None:
        #chk += 1
        parse_declaration(curr_context,mo)
        #curr_context.add_import(mo.group(1), mo.group(2))
        return chk

    # CHECK NEW SUBROUTINE
    mo = subroutine_rgx.match(line)
    if mo is not None:
        chk += 1
        context.append(Subroutine(mo.group(1).lower(), mo.group(2),curr_context))
        curr_context.add_contains(context[-1])
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
        context.append(Function(mo.group(1).lower(), mo.group(2),curr_context))
        curr_context.add_contains(context[-1])
        return chk

    # CHECK END FUNCTION
    mo = endfunction_rgx.match(line)
    if mo is not None:
        chk -= 1
        #print(context[-1])
        context.pop()
        location['procedure'] = None
        return chk


    # CHECK NEW MODULE
    mo = module_rgx.match(line)
    if mo is not None:
        chk += 1
        context.append(Module(mo.group(1).lower(),curr_context))
        curr_context.add_contains(context[-1])
        return chk

    # CHECK END MODULE
    mo = endmodule_rgx.match(line)
    if mo is not None:
        chk -= 1

        #print(context[-1])
        context.pop()
        location['module'] = None
        return chk

    return chk


if __name__ == "__main__":
    import sys
    sources  = [sys.argv[1]]
    project = Project('Test')
    for fil in sources:
        project.add_sourcefile(fil)
    project.scan_sources()
    project.make_project_tree()
