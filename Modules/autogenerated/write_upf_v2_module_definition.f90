init_args = {}
type :: write_upf_v2_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type write_upf_v2_module_type
