init_args = {"parse_unit": {"type": "integer", "dimension": null}}
type :: parser_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: parse_unit = 5

contains
  procedure, pass :: init => parser_type_init
  procedure, pass :: update => parser_type_update
end type parser_type
