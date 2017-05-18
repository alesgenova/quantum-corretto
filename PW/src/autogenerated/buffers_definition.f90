init_args = {"nunits": {"type": "integer", "dimension": null}}
type :: buffers_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nunits = 0
  integer :: nunits = 0
contains
  procedure, pass :: init
  procedure, pass :: update
end type buffers_type
