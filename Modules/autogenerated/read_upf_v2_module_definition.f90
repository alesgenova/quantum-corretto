init_args = {}
type :: read_upf_v2_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => read_upf_v2_module_type_init
  procedure, pass :: update => read_upf_v2_module_type_update
end type read_upf_v2_module_type
