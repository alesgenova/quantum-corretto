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
