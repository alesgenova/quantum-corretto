type :: gvecs_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ngms = 0
  integer :: ngms_g = 0
  integer :: ngsx = 0
  integer, allocatable, dimension(:) :: nls
  integer, allocatable, dimension(:) :: nlsm
  real(dp) :: ecuts = 0.0_dp
  real(dp) :: gcutms = 0.0_dp
  real(dp) :: dual = 0.0_dp
  logical :: doublegrid = .false.
  logical :: doublegrid = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type gvecs_type
