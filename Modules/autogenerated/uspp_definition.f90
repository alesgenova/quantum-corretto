alloc_args = {}
init_args = {"nlx": {"type": "integer", "dimension": null}, "mx": {"type": "integer", "dimension": null}, "lpx": {"type": "integer", "dimension": ":,:"}, "lpl": {"type": "integer", "dimension": ":,:,:"}, "ap": {"type": "real(dp)", "dimension": ":,:,:,:"}, "nkb": {"type": "integer", "dimension": null}, "nkbus": {"type": "integer", "dimension": null}, "indv": {"type": "integer", "dimension": ":,:"}, "nhtol": {"type": "integer", "dimension": ":,:"}, "nhtolm": {"type": "integer", "dimension": ":,:"}, "ijtoh": {"type": "integer", "dimension": ":,:,:"}, "indv_ijkb0": {"type": "integer", "dimension": ":"}, "okvan": {"type": "logical", "dimension": null}, "nlcc_any": {"type": "logical", "dimension": null}, "vkb": {"type": "complex(dp)", "dimension": ":,:"}, "becsum": {"type": "real(dp)", "dimension": ":,:,:"}, "dvan": {"type": "real(dp)", "dimension": ":,:,:"}, "deeq": {"type": "real(dp)", "dimension": ":,:,:,:"}, "qq": {"type": "real(dp)", "dimension": ":,:,:"}, "nhtoj": {"type": "real(dp)", "dimension": ":,:"}, "qq_so": {"type": "complex(dp)", "dimension": ":,:,:,:"}, "dvan_so": {"type": "complex(dp)", "dimension": ":,:,:,:"}, "deeq_nc": {"type": "complex(dp)", "dimension": ":,:,:,:"}, "beta": {"type": "real(dp)", "dimension": ":,:,:"}, "dbeta": {"type": "real(dp)", "dimension": ":,:,:,:,:"}}
type :: uspp_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nlx = (lmaxx+1)**2
  integer :: mx = 2*lqmax-1
  integer, allocatable, dimension(:,:) :: lpx ! dimensions = [":", ":"]
  integer, allocatable, dimension(:,:,:) :: lpl ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:,:) :: ap ! dimensions = [":", ":", ":", ":"]
  integer :: nkb
  integer :: nkbus
  integer, allocatable, dimension(:,:) :: indv ! dimensions = [":", ":"]
  integer, allocatable, dimension(:,:) :: nhtol ! dimensions = [":", ":"]
  integer, allocatable, dimension(:,:) :: nhtolm ! dimensions = [":", ":"]
  integer, allocatable, dimension(:,:,:) :: ijtoh ! dimensions = [":", ":", ":"]
  integer, allocatable, dimension(:) :: indv_ijkb0 ! dimensions = [":"]
  logical :: okvan = .false.
  logical :: nlcc_any = .false.
  complex(dp), allocatable, dimension(:,:) :: vkb ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: becsum ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: dvan ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:,:) :: deeq ! dimensions = [":", ":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: qq ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:) :: nhtoj ! dimensions = [":", ":"]
  complex(dp), allocatable, dimension(:,:,:,:) :: qq_so ! dimensions = [":", ":", ":", ":"]
  complex(dp), allocatable, dimension(:,:,:,:) :: dvan_so ! dimensions = [":", ":", ":", ":"]
  complex(dp), allocatable, dimension(:,:,:,:) :: deeq_nc ! dimensions = [":", ":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: beta ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:,:,:) :: dbeta ! dimensions = [":", ":", ":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:,:,:) :: dbeta ! dimensions = [":", ":", ":", ":", ":"]
contains
  procedure, pass :: alloc => uspp_type_alloc
  procedure, pass :: init => uspp_type_init
  procedure, pass :: update => uspp_type_update
  procedure, pass :: dealloc => uspp_type_dealloc
end type uspp_type
