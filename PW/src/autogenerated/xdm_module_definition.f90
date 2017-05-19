alloc_args = {}
init_args = {"nenv": {"type": "integer", "dimension": null}, "xenv": {"type": "real(dp)", "dimension": ":,:"}, "ienv": {"type": "integer", "dimension": ":"}, "lvec": {"type": "integer", "dimension": ":,:"}, "nvec": {"type": "integer", "dimension": null}, "alpha": {"type": "real(dp)", "dimension": ":"}, "ml": {"type": "real(dp)", "dimension": ":,:"}, "cx": {"type": "real(dp)", "dimension": ":,:,:"}, "rvdw": {"type": "real(dp)", "dimension": ":,:"}, "maxc6": {"type": "real(dp)", "dimension": null}, "esave": {"type": "real(dp)", "dimension": null}, "esaveold": {"type": "real(dp)", "dimension": null}, "fsave": {"type": "real(dp)", "dimension": ":,:"}, "ssave": {"type": "real(dp)", "dimension": ":,:"}, "saved": {"type": "logical", "dimension": null}, "a1i": {"type": "real(dp)", "dimension": null}, "a2i": {"type": "real(dp)", "dimension": null}, "rfree": {"type": "real(dp)", "dimension": ":,:"}, "w2free": {"type": "real(dp)", "dimension": ":,:"}, "rmaxg2": {"type": "real(dp)", "dimension": ":"}, "rcore": {"type": "real(dp)", "dimension": ":,:"}, "w2core": {"type": "real(dp)", "dimension": ":,:"}, "rmaxcore2": {"type": "real(dp)", "dimension": ":"}, "afree": {"type": "real(dp)", "dimension": ":"}, "alpha_free": {"type": "real(dp)", "dimension": ":"}, "fact": {"type": "real(dp)", "dimension": ":"}}
type :: xdm_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nenv
  real(dp), allocatable, dimension(:,:) :: xenv ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: ienv ! dimensions = [":"]
  integer, allocatable, dimension(:,:) :: lvec ! dimensions = [":", ":"]
  integer :: nvec
  real(dp), allocatable, dimension(:) :: alpha ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: ml ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: cx ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:) :: rvdw ! dimensions = [":", ":"]
  real(dp) :: maxc6
  real(dp) :: esave = 0._dp
  real(dp) :: esaveold = 0._dp
  real(dp), allocatable, dimension(:,:) :: fsave ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: ssave ! dimensions = [":", ":"]
  logical :: saved = .false.
  real(dp) :: a1i = 0.6836_dp
  real(dp) :: a2i = 1.5045_dp
  real(dp), allocatable, dimension(:,:) :: rfree ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: w2free ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:) :: rmaxg2 ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: rcore ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: w2core ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:) :: rmaxcore2 ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: afree ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: alpha_free ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: fact ! dimensions = [":"]

contains
  procedure, pass :: alloc => xdm_module_type_alloc
  procedure, pass :: init => xdm_module_type_init
  procedure, pass :: update => xdm_module_type_update
  procedure, pass :: dealloc => xdm_module_type_dealloc
end type xdm_module_type
