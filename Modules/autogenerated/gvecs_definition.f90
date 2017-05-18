alloc_args = {}
init_args = {"ngms": {"type": "integer", "dimension": null}, "ngms_g": {"type": "integer", "dimension": null}, "ngsx": {"type": "integer", "dimension": null}, "nls": {"type": "integer", "dimension": ":"}, "nlsm": {"type": "integer", "dimension": ":"}, "ecuts": {"type": "real(dp)", "dimension": null}, "gcutms": {"type": "real(dp)", "dimension": null}, "dual": {"type": "real(dp)", "dimension": null}, "doublegrid": {"type": "logical", "dimension": null}}
type :: gvecs_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ngms = 0
  integer :: ngms_g = 0
  integer :: ngsx = 0
  integer, allocatable, dimension(:) :: nls ! dimensions = [":"]
  integer, allocatable, dimension(:) :: nlsm ! dimensions = [":"]
  real(dp) :: ecuts = 0.0_dp
  real(dp) :: gcutms = 0.0_dp
  real(dp) :: dual = 0.0_dp
  logical :: doublegrid = .false.
  logical :: doublegrid = .false.
contains
  procedure, pass :: alloc => gvecs_type_alloc
  procedure, pass :: init => gvecs_type_init
  procedure, pass :: update => gvecs_type_update
  procedure, pass :: dealloc => gvecs_type_dealloc
end type gvecs_type
