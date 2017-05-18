init_args = {}
type :: wrappers_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => wrappers_type_init
  procedure, pass :: update => wrappers_type_update
end type wrappers_type
