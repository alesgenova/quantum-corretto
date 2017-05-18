init_args = {}
type :: dfunct_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => dfunct_type_init
  procedure, pass :: update => dfunct_type_update
end type dfunct_type
