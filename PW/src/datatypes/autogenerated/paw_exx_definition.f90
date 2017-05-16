type :: paw_exx_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(paw_fockrnl_type), allocatable, dimension(:) :: ke
  logical :: paw_has_init_paw_fockrnl = .false.
  logical :: paw_has_init_paw_fockrnl = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type paw_exx_type
