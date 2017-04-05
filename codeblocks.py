'''
    This file is part of fQE.

    Foobar is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Foobar is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with fQE.  If not, see <http://www.gnu.org/licenses/>.
'''

#! /usr/bin/env python3

from f90_regex import *
from collections import OrderedDict
tree_root = 1


class Line(object):
    
    def __init__(self, input_string, fileobj_in):
        self.bare = ''
        self.code = []
        self.comment = []
        continue_line = True
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
            except:
                code = re.match(r'^\s*(&)?\s*(.*?)(&)?\s*$',code).group(2)
                continue_line = False

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
    
    def __init__(self, name):
        self.name = name
        self.sources = []
        
    def add_sourcefile(self, filename):
        self.sources.append(Sourcefile(filename))
        
    def scan_sources(self):
        for src in self.sources:
            #print('Scanning', src.name)
            src.scan()
        
    def make_project_tree(self):
        print('PROJECT '+self.name)
        for src in self.sources:
            print('  |')
            src.print_contains()
        

class Codeblock(object):
    
    def __init__(self,name):
        self.name = name.lower()
        self.contains = OrderedDict()
        self.imports = OrderedDict()
    
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
    
        
        


class Sourcefile(Codeblock):
    
    def __init__(self,name):
        super().__init__(name)
        self.name = name
        self.parent = None
        self.tree_level = tree_root
        self.typ = 'Sourcefile'
        self.lines = []
    
    def __str__(self):
        return 'FILE '+self.name
        
    def add_line(self, string, fileobj):
        self.lines.append(Line(string,fileobj))
    
    def scan(self):
        context = []
        context.append(self)
        with open(self.name,'r') as src:
            for line in src:
                
                self.lines.append(Line(line,src))
                
                # Parse line to update context
                # (i.e. are we entering a new module/routine/function?)
                
                if len(self.lines[-1].bare) > 0 :
                    output = line_to_context(self.lines[-1].bare,context)
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
    
    def __str__(self):
        return 'MODULE '+self.name


def str_to_arg(string):
    if string is None:
        return None, ''
    args = vars_rgx.findall(string)
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
    
    
def line_to_context(line, context):
    
    curr_context = context[-1]
    
    chk = 0
    
    #print(line)
    
    # CHECK USE STATEMENTS 
    mo = use_rgx.match(line)
    if mo is not None:
        #chk += 1
        curr_context.add_import(mo.group(1), mo.group(2))
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
    
