type :: uspp_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nlx = (lmaxx+1)**2
  integer :: mx = 2*lqmax-1
  integer, dimension(nlx,nlx) :: lpx
  integer, dimension(nlx,nlx,mx) :: lpl
  real(dp), dimension(lqmax*lqmax,nlx,nlx) :: ap
  integer :: nkb
  integer :: nkbus
  integer, allocatable, dimension(:,:) :: indv
  integer, allocatable, dimension(:,:) :: nhtol
  integer, allocatable, dimension(:,:) :: nhtolm
  integer, allocatable, dimension(:,:,:) :: ijtoh
  integer, allocatable, dimension(:) :: indv_ijkb0
  logical :: okvan = .false.
  logical :: nlcc_any = .false.
  complex(dp), allocatable, dimension(:,:) :: vkb
  real(dp), allocatable, dimension(:,:,:) :: becsum
  real(dp), allocatable, dimension(:,:,:) :: dvan
  real(dp), allocatable, dimension(:,:,:,:) :: deeq
  real(dp), allocatable, dimension(:,:,:) :: qq
  real(dp), allocatable, dimension(:,:) :: nhtoj
  complex(dp), allocatable, dimension(:,:,:,:) :: qq_so
  complex(dp), allocatable, dimension(:,:,:,:) :: dvan_so
  complex(dp), allocatable, dimension(:,:,:,:) :: deeq_nc
  real(dp), allocatable, dimension(:,:,:) :: beta
  real(dp), allocatable, dimension(:,:,:,:,:) :: dbeta
  real(dp), allocatable, dimension(:,:,:,:,:) :: dbeta
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type uspp_type
