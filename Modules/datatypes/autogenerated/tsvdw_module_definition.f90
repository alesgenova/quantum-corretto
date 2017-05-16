type :: tsvdw_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: vdw_isolated
  real(dp) :: vdw_econv_thr
  real(dp) :: EtsvdW
  real(dp), allocatable, dimension(:) :: UtsvdW
  real(dp), allocatable, dimension(:,:) :: FtsvdW
  real(dp), allocatable, dimension(:,:) :: HtsvdW
  real(dp), allocatable, dimension(:) :: VefftsvdW
  integer :: NgpA = 1000
  integer :: bsint = bit_size(ngpa)
  integer :: me
  integer :: iproc
  integer :: nr1
  integer :: nr2
  integer :: nr3
  integer :: nr1r
  integer :: nr2r
  integer :: nr3r
  real(dp) :: ddamp
  real(dp) :: sR
  real(dp) :: spcutAmax
  integer, allocatable, dimension(:) :: nstates
  integer, allocatable, dimension(:) :: sdispls
  integer, allocatable, dimension(:) :: rdispls
  integer, allocatable, dimension(:) :: sendcount
  integer, allocatable, dimension(:) :: recvcount
  integer, allocatable, dimension(:) :: istatus
  integer, allocatable, dimension(:) :: NsomegaA
  integer, allocatable, dimension(:) :: NsomegaAr
  integer, allocatable, dimension(:) :: npair
  integer, allocatable, dimension(:,:) :: pair
  integer, allocatable, dimension(:,:) :: gomegar
  integer, allocatable, dimension(:,:,:) :: somegaA
  integer, allocatable, dimension(:,:,:) :: somegaAr
  integer, allocatable, dimension(:,:,:) :: gomegaAr
  real(dp), allocatable, dimension(:) :: predveffAdn
  real(dp), allocatable, dimension(:) :: vfree
  real(dp), allocatable, dimension(:) :: dpfree
  real(dp), allocatable, dimension(:) :: R0free
  real(dp), allocatable, dimension(:) :: C6AAfree
  real(dp), allocatable, dimension(:) :: veff
  real(dp), allocatable, dimension(:) :: dpeff
  real(dp), allocatable, dimension(:) :: R0eff
  real(dp), allocatable, dimension(:) :: C6AAeff
  real(dp), allocatable, dimension(:) :: rhosad
  real(dp), allocatable, dimension(:) :: rhotot
  real(dp), allocatable, dimension(:,:) :: dveffAdn
  real(dp), allocatable, dimension(:,:) :: spgrd
  real(dp), allocatable, dimension(:,:) :: sprho
  real(dp), allocatable, dimension(:,:) :: spdrho
  real(dp), allocatable, dimension(:,:) :: spdata
  real(dp), allocatable, dimension(:,:) :: LIA
  real(dp), allocatable, dimension(:,:) :: LIB
  real(dp), allocatable, dimension(:,:) :: dLIA
  real(dp), allocatable, dimension(:,:) :: dLIB
  real(dp), allocatable, dimension(:,:) :: atxyz
  real(dp), allocatable, dimension(:,:) :: C6ABfree
  real(dp), allocatable, dimension(:,:) :: C6ABeff
  real(dp), allocatable, dimension(:,:,:) :: dveffdR
  real(dp), allocatable, dimension(:,:,:) :: dveffdh
  real(dp), allocatable, dimension(:,:,:) :: dveffdh
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type tsvdw_module_type
