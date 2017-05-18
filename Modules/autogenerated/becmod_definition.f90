init_args = {"becp": {"type": "type(bec_type)", "dimension": null}}
type :: becmod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(bec_type) :: becp
  type(bec_type) :: becp
contains
  procedure, pass :: init
  procedure, pass :: update
end type becmod_type
