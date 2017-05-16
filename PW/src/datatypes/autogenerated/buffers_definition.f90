type :: buffers_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nunits = 0
  integer :: nunits = 0
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type buffers_type
