init_args = {}
type :: qes_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => qes_module_type_init
  procedure, pass :: update => qes_module_type_update
end type qes_module_type
