type :: parser_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: parse_unit = 5
  integer :: parse_unit = 5
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type parser_type
