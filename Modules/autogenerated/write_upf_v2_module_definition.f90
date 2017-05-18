init_args = {}
type :: write_upf_v2_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => write_upf_v2_module_type_init
  procedure, pass :: update => write_upf_v2_module_type_update
end type write_upf_v2_module_type
