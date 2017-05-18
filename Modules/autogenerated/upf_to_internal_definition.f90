init_args = {}
type :: upf_to_internal_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type upf_to_internal_type
