type :: mp_world_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nproc = 1
  integer :: mpime = 0
  integer :: root = 0
  integer :: world_comm = 0
  logical :: library_mode = .false.
  logical :: library_mode = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type mp_world_type
