import re
import json
import f90_regex

from codeblocks import Datatype, parse_declaration
from default_type_procedures import write_alloc, write_init

import argparse

def split_code(line):
    try:
        code, comment = re.match(r'\s*(.*?)(?:\s*!(.*))$', line).groups()
    except:
        #pass
        code = re.match(r'\s*(.*?)\s*$', line).group(1)
        comment = ''
    return code, comment

def line_to_regex(line, comment, curr_context, init_args, alloc_args):

    # CHECK DECLARATION STATEMENTS
    mo = f90_regex.declaration_rgx.match(line)
    if mo is not None:
        #chk += 1
        if mo.group('type_base').strip().lower() == "type" and mo.group('type_extra') is None:
            pass
        else:
            parse_declaration(curr_context,mo)
            #curr_context.add_import(mo.group(1), mo.group(2))
    # CHECK init_args
    mo = re.match(r'^\s*init_args\s*=\s*(.*?)\s*$', line)#.group(1)
    if mo is not None:
        init_args = mo.group(1)
        init_args = json.loads(init_args)
        #print(type(args_dict), args_dict)

    # CHECK alloc_args
    mo = re.match(r'^\s*alloc_args\s*=\s*(.*?)\s*$', line)#.group(1)
    if mo is not None:
        alloc_args = mo.group(1)
        alloc_args = json.loads(alloc_args)
        #print(type(args_dict), args_dict)

    return datatype, init_args, alloc_args

parser = argparse.ArgumentParser(description='Create the procedures blueprints of an objectified datatype from the human-patched definition file')
parser.add_argument('-i', '--input_module',
                    help='the prefix of the datatype. i.e. "gvect" in the case of the "gvect_type"',
                    required='True')

args = parser.parse_args()

module_name = args.input_module
definition_file = module_name+"_definition.f90"
procedures_file = module_name+"_procedures.f90"
init_args = {}
alloc_args = {}

print(definition_file)

datatype = Datatype(module_name+"_type", None)

with open(definition_file,"r") as f:
    for line in f:
        code, comment = split_code(line)
        datatype, init_args, alloc_args = line_to_regex(line, comment, datatype, init_args, alloc_args)
        print(comment)

with open(procedures_file,"w") as f:
    write_init(datatype,f)

for key in init_args:
    print(key)

for key, var in datatype.declares.items():
    print(var)
    print()
