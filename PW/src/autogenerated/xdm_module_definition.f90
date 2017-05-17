type :: xdm_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nenv
  real(dp), allocatable, dimension(:,:) :: xenv
  integer, allocatable, dimension(:) :: ienv
  integer, allocatable, dimension(:,:) :: lvec
  integer :: nvec
  real(dp), allocatable, dimension(:) :: alpha
  real(dp), allocatable, dimension(:,:) :: ml
  real(dp), allocatable, dimension(:,:,:) :: cx
  real(dp), allocatable, dimension(:,:) :: rvdw
  real(dp) :: maxc6
  real(dp) :: esave = 0._dp
  real(dp) :: esaveold = 0._dp
  real(dp), allocatable, dimension(:,:) :: fsave
  real(dp), allocatable, dimension(:,:) :: ssave
  logical :: saved = .false.
  real(dp) :: a1i = 0.6836_dp
  real(dp) :: a2i = 1.5045_dp
  real(dp), allocatable, dimension(:,:) :: rfree
  real(dp), allocatable, dimension(:,:) :: w2free
  real(dp), allocatable, dimension(:) :: rmaxg2
  real(dp), allocatable, dimension(:,:) :: rcore
  real(dp), allocatable, dimension(:,:) :: w2core
  real(dp), allocatable, dimension(:) :: rmaxcore2
  real(dp), allocatable, dimension(:) :: afree
  real(dp), dimension(1:102) :: alpha_free = (/0.6668_dp
  real(dp), dimension(0:8) :: fact = real((/1
  real(dp) :: 1
  real(dp) :: 2
  real(dp) :: 6
  real(dp) :: 24
  real(dp) :: 120
  real(dp) :: 720
  real(dp) :: 5040
  real(dp) :: 5040
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type xdm_module_type
