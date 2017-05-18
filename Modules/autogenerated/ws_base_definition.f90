init_args = {}
type :: ws_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => ws_base_type_init
  procedure, pass :: update => ws_base_type_update
end type ws_base_type
