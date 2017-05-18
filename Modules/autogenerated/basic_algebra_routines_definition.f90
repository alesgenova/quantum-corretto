init_args = {}
type :: basic_algebra_routines_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => basic_algebra_routines_type_init
  procedure, pass :: update => basic_algebra_routines_type_update
end type basic_algebra_routines_type
