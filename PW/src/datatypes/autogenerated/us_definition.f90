type :: us_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nqxq
  integer :: nqx
  real(dp) :: dq = 0.01d0
  real(dp), allocatable, dimension(:,:,:,:) :: qrad
  real(dp), allocatable, dimension(:,:,:) :: tab
  real(dp), allocatable, dimension(:,:,:) :: tab_at
  logical :: spline_ps = .false.
  real(dp), allocatable, dimension(:,:,:) :: tab_d2y
  real(dp), allocatable, dimension(:,:,:) :: tab_d2y
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type us_type
