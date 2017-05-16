type :: becmod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(bec_type) :: becp
  type(bec_type) :: becp
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type becmod_type
