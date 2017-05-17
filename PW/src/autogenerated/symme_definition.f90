type :: symme_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: no_rho_sym = .true.
  integer :: ngs
  type(shell_type), allocatable, dimension(:) :: shell
  integer, allocatable, dimension(:) :: sendcnt
  integer, allocatable, dimension(:) :: recvcnt
  integer, allocatable, dimension(:) :: sdispls
  integer, allocatable, dimension(:) :: rdispls
  integer, allocatable, dimension(:) :: rdispls
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type symme_type
