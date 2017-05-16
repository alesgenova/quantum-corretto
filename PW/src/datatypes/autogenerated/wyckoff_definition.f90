type :: wyckoff_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nattot
  real(dp), allocatable, dimension(:,:) :: tautot
  real(dp), allocatable, dimension(:,:) :: extfortot
  integer, allocatable, dimension(:) :: ityptot
  integer, allocatable, dimension(:,:) :: if_postot
  integer, allocatable, dimension(:,:) :: if_postot
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type wyckoff_type
