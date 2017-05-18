alloc_args = {}
init_args = {"vdw_isolated": {"type": "logical", "dimension": null}, "vdw_econv_thr": {"type": "real(dp)", "dimension": null}, "EtsvdW": {"type": "real(dp)", "dimension": null}, "UtsvdW": {"type": "real(dp)", "dimension": ":"}, "FtsvdW": {"type": "real(dp)", "dimension": ":,:"}, "HtsvdW": {"type": "real(dp)", "dimension": ":,:"}, "VefftsvdW": {"type": "real(dp)", "dimension": ":"}, "NgpA": {"type": "integer", "dimension": null}, "bsint": {"type": "integer", "dimension": null}, "me": {"type": "integer", "dimension": null}, "iproc": {"type": "integer", "dimension": null}, "nr1": {"type": "integer", "dimension": null}, "nr2": {"type": "integer", "dimension": null}, "nr3": {"type": "integer", "dimension": null}, "nr1r": {"type": "integer", "dimension": null}, "nr2r": {"type": "integer", "dimension": null}, "nr3r": {"type": "integer", "dimension": null}, "ddamp": {"type": "real(dp)", "dimension": null}, "sR": {"type": "real(dp)", "dimension": null}, "spcutAmax": {"type": "real(dp)", "dimension": null}, "nstates": {"type": "integer", "dimension": ":"}, "sdispls": {"type": "integer", "dimension": ":"}, "rdispls": {"type": "integer", "dimension": ":"}, "sendcount": {"type": "integer", "dimension": ":"}, "recvcount": {"type": "integer", "dimension": ":"}, "istatus": {"type": "integer", "dimension": ":"}, "NsomegaA": {"type": "integer", "dimension": ":"}, "NsomegaAr": {"type": "integer", "dimension": ":"}, "npair": {"type": "integer", "dimension": ":"}, "pair": {"type": "integer", "dimension": ":,:"}, "gomegar": {"type": "integer", "dimension": ":,:"}, "somegaA": {"type": "integer", "dimension": ":,:,:"}, "somegaAr": {"type": "integer", "dimension": ":,:,:"}, "gomegaAr": {"type": "integer", "dimension": ":,:,:"}, "predveffAdn": {"type": "real(dp)", "dimension": ":"}, "vfree": {"type": "real(dp)", "dimension": ":"}, "dpfree": {"type": "real(dp)", "dimension": ":"}, "R0free": {"type": "real(dp)", "dimension": ":"}, "C6AAfree": {"type": "real(dp)", "dimension": ":"}, "veff": {"type": "real(dp)", "dimension": ":"}, "dpeff": {"type": "real(dp)", "dimension": ":"}, "R0eff": {"type": "real(dp)", "dimension": ":"}, "C6AAeff": {"type": "real(dp)", "dimension": ":"}, "rhosad": {"type": "real(dp)", "dimension": ":"}, "rhotot": {"type": "real(dp)", "dimension": ":"}, "dveffAdn": {"type": "real(dp)", "dimension": ":,:"}, "spgrd": {"type": "real(dp)", "dimension": ":,:"}, "sprho": {"type": "real(dp)", "dimension": ":,:"}, "spdrho": {"type": "real(dp)", "dimension": ":,:"}, "spdata": {"type": "real(dp)", "dimension": ":,:"}, "LIA": {"type": "real(dp)", "dimension": ":,:"}, "LIB": {"type": "real(dp)", "dimension": ":,:"}, "dLIA": {"type": "real(dp)", "dimension": ":,:"}, "dLIB": {"type": "real(dp)", "dimension": ":,:"}, "atxyz": {"type": "real(dp)", "dimension": ":,:"}, "C6ABfree": {"type": "real(dp)", "dimension": ":,:"}, "C6ABeff": {"type": "real(dp)", "dimension": ":,:"}, "dveffdR": {"type": "real(dp)", "dimension": ":,:,:"}, "dveffdh": {"type": "real(dp)", "dimension": ":,:,:"}}
type :: tsvdw_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: vdw_isolated
  real(dp) :: vdw_econv_thr
  real(dp) :: EtsvdW
  real(dp), allocatable, dimension(:) :: UtsvdW ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: FtsvdW ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: HtsvdW ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:) :: VefftsvdW ! dimensions = [":"]
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
  integer, allocatable, dimension(:) :: nstates ! dimensions = [":"]
  integer, allocatable, dimension(:) :: sdispls ! dimensions = [":"]
  integer, allocatable, dimension(:) :: rdispls ! dimensions = [":"]
  integer, allocatable, dimension(:) :: sendcount ! dimensions = [":"]
  integer, allocatable, dimension(:) :: recvcount ! dimensions = [":"]
  integer, allocatable, dimension(:) :: istatus ! dimensions = [":"]
  integer, allocatable, dimension(:) :: NsomegaA ! dimensions = [":"]
  integer, allocatable, dimension(:) :: NsomegaAr ! dimensions = [":"]
  integer, allocatable, dimension(:) :: npair ! dimensions = [":"]
  integer, allocatable, dimension(:,:) :: pair ! dimensions = [":", ":"]
  integer, allocatable, dimension(:,:) :: gomegar ! dimensions = [":", ":"]
  integer, allocatable, dimension(:,:,:) :: somegaA ! dimensions = [":", ":", ":"]
  integer, allocatable, dimension(:,:,:) :: somegaAr ! dimensions = [":", ":", ":"]
  integer, allocatable, dimension(:,:,:) :: gomegaAr ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:) :: predveffAdn ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: vfree ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: dpfree ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: R0free ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: C6AAfree ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: veff ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: dpeff ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: R0eff ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: C6AAeff ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: rhosad ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: rhotot ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: dveffAdn ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: spgrd ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: sprho ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: spdrho ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: spdata ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: LIA ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: LIB ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: dLIA ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: dLIB ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: atxyz ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: C6ABfree ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: C6ABeff ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: dveffdR ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: dveffdh ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: dveffdh ! dimensions = [":", ":", ":"]
contains
  procedure, pass :: alloc => tsvdw_module_type_alloc
  procedure, pass :: init => tsvdw_module_type_init
  procedure, pass :: update => tsvdw_module_type_update
  procedure, pass :: dealloc => tsvdw_module_type_dealloc
end type tsvdw_module_type
