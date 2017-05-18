init_args = {}
type :: upf_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => upf_module_type_init
  procedure, pass :: update => upf_module_type_update
end type upf_module_type
