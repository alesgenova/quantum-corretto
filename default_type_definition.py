from collections import OrderedDict
import json

from f90_regex import dimensions_rgx

def write_definition(original_module, file_obj, procedures=None):
    f = file_obj
    allocatable_vars = []
    for key, var in original_module.declares.items():
        if var['allocatable'] is not None or var['dimension'] is not None:
            if var['allocatable'] is None:
                dims = dimensions_rgx.findall(var['dimension'])
                c = 0
                dims_int = []
                for element in dims:
                    try:
                        dims_int.append(int(element))
                        c += 1
                    except ValueError:
                        pass
                if len(dims) != len(dims_int):
                    var['allocatable'] = True
                    var['dimension'] = ",".join([":"]*len(dims))
                    allocatable_vars.append(var)
            else:
                allocatable_vars.append(var)

    do_alloc = len(allocatable_vars) > 0
    if procedures is None:
        if do_alloc:
            procedures = ['alloc','init', 'update','dealloc']
        else:
            procedures = ['init', 'update']

    # write the init_args dict
    init_args = OrderedDict()
    for key, var in original_module.declares.items():
        init_args[var['name']] = OrderedDict()
        type_string = var['type_base']
        if var['type_extra'] is not None: type_string += "({})".format(var['type_extra'])
        dimension_string = var['dimension']
        init_args[var['name']]['type'] = type_string
        init_args[var['name']]['dimension'] = dimension_string

    # write the alloc_args dict
    if do_alloc:
        f.write("alloc_args = {}\n")
    # write all the init_args
    f.write("init_args = {}\n".format(json.dumps(init_args,indent=None)))

    f.write("type :: {}_type".format(original_module.name)+"\n")
    f.write("  logical :: is_alloc = .false.\n")
    f.write("  logical :: is_init = .false.\n")
    string = ""
    for key, var in original_module.declares.items():
        string = "  "+var['type_base']
        if var['type_extra'] is not None: string += "({})".format(var['type_extra'])
        if var['allocatable']: string += ", allocatable"
        if var['dimension'] is not None: string += ", dimension({})".format(var['dimension'])
        if var['pointer']: string += ", pointer"
        string += " :: "
        string += var['name']
        if var['default'] is not None and var['allocatable'] is None: string += " = {}".format(var['default'])
        if var['allocatable']: string += " ! dimensions = [{}]".format(var['dimension']) 
        f.write(string+"\n")
    f.write(string+"\ncontains\n")
    for procedure in procedures:
        f.write("  procedure, pass :: {}\n".format(procedure))
    f.write("end type {}_type".format(original_module.name)+"\n")

    return procedures
