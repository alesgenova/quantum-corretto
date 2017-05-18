init_args = {}
type :: dfunct_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type dfunct_type
