alloc_args = {}
init_args = {"maxclock": {"type": "integer", "dimension": null}, "notrunning": {"type": "real(dp)", "dimension": null}, "cputime": {"type": "real(dp)", "dimension": ":"}, "t0cpu": {"type": "real(dp)", "dimension": ":"}, "walltime": {"type": "real(dp)", "dimension": ":"}, "t0wall": {"type": "real(dp)", "dimension": ":"}, "clock_label": {"type": "character(len=12)", "dimension": ":"}, "called": {"type": "integer", "dimension": ":"}, "nclock": {"type": "integer", "dimension": null}, "no": {"type": "logical", "dimension": null}, "trace_depth": {"type": "integer", "dimension": null}}
type :: mytime_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: maxclock = 101
  real(dp) :: notrunning = - 1.0_dp
  real(dp), allocatable, dimension(:) :: cputime ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: t0cpu ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: walltime ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: t0wall ! dimensions = [":"]
  character(len=12), allocatable, dimension(:) :: clock_label ! dimensions = [":"]
  integer, allocatable, dimension(:) :: called ! dimensions = [":"]
  integer :: nclock = 0
  logical :: no
  integer :: trace_depth = 0

contains
  procedure, pass :: alloc => mytime_type_alloc
  procedure, pass :: init => mytime_type_init
  procedure, pass :: update => mytime_type_update
  procedure, pass :: dealloc => mytime_type_dealloc
end type mytime_type
