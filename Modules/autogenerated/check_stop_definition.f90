init_args = {"max_seconds": {"type": "real(dp)", "dimension": null}, "init_second": {"type": "real(dp)", "dimension": null}, "stopped_by_user": {"type": "logical", "dimension": null}, "tinit": {"type": "logical", "dimension": null}}
type :: check_stop_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: max_seconds = 1.e+7_dp
  real(dp) :: init_second
  logical :: stopped_by_user = .false.
  logical :: tinit = .false.
  logical :: tinit = .false.
contains
  procedure, pass :: init
  procedure, pass :: update
end type check_stop_type
