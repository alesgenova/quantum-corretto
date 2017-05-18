init_args = {}
type :: read_uspp_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type read_uspp_module_type
