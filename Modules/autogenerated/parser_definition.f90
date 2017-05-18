init_args = {"parse_unit": {"type": "integer", "dimension": null}}
type :: parser_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: parse_unit = 5
  integer :: parse_unit = 5
contains
  procedure, pass :: init
  procedure, pass :: update
end type parser_type
