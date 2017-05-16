type :: start_k_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nk1
  integer :: nk2
  integer :: nk3
  integer :: k1
  integer :: k2
  integer :: k3
  integer :: nks_start = 0
  real(dp), allocatable, dimension(:) :: wk_start
  real(dp), allocatable, dimension(:,:) :: xk_start
  real(dp), allocatable, dimension(:,:) :: xk_start
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type start_k_type
