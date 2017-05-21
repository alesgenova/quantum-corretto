init_args = {"parse_unit": {"type": "integer", "dimension": null}, "num": {"type": "integer", "dimension": null}, "line": {"type": "character(len=*)", "dimension": null}, "car": {"type": "character(len=1)", "dimension": null}}
type :: parser_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: parse_unit = 5
  integer :: num
  character(len=*) :: line
  character(len=1) :: car

#if defined (__xlf) 
init_args = {"sep1": {"type": "character(len=1)", "dimension": null}, "sep2": {"type": "character(len=1)", "dimension": null}, "j": {"type": "integer", "dimension": null}}
  character(len=1) :: sep1
  character(len=1) :: sep2
  integer :: j

#else 
init_args = {"sep1": {"type": "character(len=1)", "dimension": null}, "sep2": {"type": "character(len=1)", "dimension": null}, "j": {"type": "integer", "dimension": null}}
  character(len=1) :: sep1
  character(len=1) :: sep2
  integer :: j
#endif 

contains
  procedure, pass :: init => parser_type_init
  procedure, pass :: update => parser_type_update
end type parser_type
