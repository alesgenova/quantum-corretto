init_args = {}
type :: basic_algebra_routines_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type basic_algebra_routines_type
