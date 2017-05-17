type :: ktetra_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: tetra_type = 0
  integer :: ntetra
  integer :: nntetra
  integer, allocatable, dimension(:,:) :: tetra
  real(dp), allocatable, dimension(:,:) :: wlsm
  real(dp), allocatable, dimension(:,:) :: wlsm
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type ktetra_type
