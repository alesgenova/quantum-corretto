type :: paw_init_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: TIMING = .false.
  logical :: TIMING = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type paw_init_type
