#! /usr/bin/env python3

import re

# preprocess statements
ppsl_rgx    = re.compile(r'^\s*#(include|define)(.*)',re.IGNORECASE)
ppif_rgx    = re.compile(r'^\s*#(if)(.*)',re.IGNORECASE)
ppelse_rgx  = re.compile(r'^\s*#(el)(.*)',re.IGNORECASE)
ppendif_rgx = re.compile(r'^\s*#(end\s*if)(.*)',re.IGNORECASE)

use_rgx = re.compile(r'^\s*USE\s+(\w+)\s*(?:,\s*ONLY\s*:\s*)?(.*)?',re.IGNORECASE)
#useonly_rgx = re.compile(r'USE\s+(\w+)(\s*,\s*ONLY\s*:\s*)+',re.IGNORECASE)
args_rgx = re.compile(r'(\w+)',re.IGNORECASE)

module_rgx = re.compile(r'^\s*module\s+(?!procedure\b)(\w+)',re.IGNORECASE)
endmodule_rgx = re.compile(r'^\s*end\s*module(?:\s+(\w+))?',re.IGNORECASE)

subroutine_rgx = re.compile(r'^\s*subroutine\s+(\w+)\s*(?:\((.*)\))?',re.IGNORECASE)
#endsubroutine_rgx = re.compile(r'^\s*end\s*subroutine\s+(\w+)',re.IGNORECASE)
endsubroutine_rgx = re.compile(r'^\s*end\s*subroutine(?:\s+(\w+))?',re.IGNORECASE)

function_rgx = re.compile(r'^\s*(?:(?:real|complex|integer|character|logical).*\s+)?function\s+(\w+)\s*(?:\((.*?)\))?\s*(?:result\s*(?:\((.*?)\)))?'                          ,re.IGNORECASE)
endfunction_rgx = re.compile(r'^\s*end\s*function(?:\s+(\w+))?',re.IGNORECASE)

type_rgx = re.compile(r'^\s*type\s*(?:::)?\s*(?P<name>\w+)\s*$',re.IGNORECASE)
endtype_rgx = re.compile(r'^\s*end\s*type\s*(?:\w+)?\s*$',re.IGNORECASE)

declaration_rgx = re.compile(r'^\s*(?P<type_base>real|complex|integer|character|logical|type)\s*(?:\((?P<type_extra>.*?)\))?\s*,?(?P<options>.*)::\s*(?P<vars>.+)$',re.IGNORECASE)
options_rgx = re.compile(r'^\s*(?:(?P<option>\w+)\s*(?:\((?P<slice>.*)?\))?\s*,?\s*)',re.IGNORECASE)
vars_rgx = re.compile(r'^(?P<subtract>,?\s*(?P<variable>\w+)\s*(?:\((?P<slice>.*?)?\))?\s*(?:=\s*(?P<assign>(reshape[\(].*[\)]|.*?)))?)(,\s*\D\w.*)?$',re.IGNORECASE)

dimensions_rgx = re.compile(r"([-+a-zA-Z0-9]+(?:\s*%\s*[a-zA-Z0-9]+)?(?::[-+a-zA-Z0-9]+(?:\s*%\s*[a-zA-Z0-9]+)?)?)\s*,?", re.IGNORECASE)
alloc_dimensions_rgx = re.compile(r'\s*(:)\s*', re.IGNORECASE)
