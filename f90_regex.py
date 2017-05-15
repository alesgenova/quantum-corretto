#! /usr/bin/env python3

import re

use_rgx = re.compile(r'^\s*USE\s+(\w+)\s*(?:,\s*ONLY\s*:\s*)?(.*)?',re.IGNORECASE)
#useonly_rgx = re.compile(r'USE\s+(\w+)(\s*,\s*ONLY\s*:\s*)+',re.IGNORECASE)
args_rgx = re.compile(r'(\w+)',re.IGNORECASE)
module_rgx = re.compile(r'^\s*module\s+(?!procedure\b)(\w+)',re.IGNORECASE)
endmodule_rgx = re.compile(r'^\s*end\s*module(?:\s+(\w+))?',re.IGNORECASE)
subroutine_rgx = re.compile(r'^\s*subroutine\s+(\w+)\s*(?:\((.*)\))?',re.IGNORECASE)
#endsubroutine_rgx = re.compile(r'^\s*end\s*subroutine\s+(\w+)',re.IGNORECASE)
endsubroutine_rgx = re.compile(r'^\s*end\s*subroutine(?:\s+(\w+))?',re.IGNORECASE)
function_rgx = re.compile(r'^\s*(?:(?:real|complex|integer|character|logical).*\s+)?function\s+(\w+)\s*(?:\((.*?)\))?\s*(?:result\s*(?:\((.*?)\)))?'
                          ,re.IGNORECASE)
endfunction_rgx = re.compile(r'^\s*end\s*function(?:\s+(\w+))?',re.IGNORECASE)

declaration_rgx = re.compile(r'^\s*(?P<type_base>real|complex|integer|character|logical|type)\s*(?:\((?P<type_extra>.*?)\))?\s*,?(?P<options>.*)::\s*(?P<vars>.+)$',re.IGNORECASE)
options_rgx = re.compile(r'^\s*(?:(?P<option>\w+)\s*(?:\((?P<slice>.*)?\))?\s*,?\s*)',re.IGNORECASE)
vars_rgx = re.compile(r'^(?P<subtract>,?\s*(?P<variable>\w+)\s*(?:\((?P<slice>.*?)?\))?\s*(?:=\s*(?P<assign>.*?))?)(,.*)?$',re.IGNORECASE)
