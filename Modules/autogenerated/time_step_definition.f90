init_args = {"delthal": {"type": "real(dp)", "dimension": null}, "twodelt": {"type": "real(dp)", "dimension": null}, "fordt2": {"type": "real(dp)", "dimension": null}, "dt2": {"type": "real(dp)", "dimension": null}, "dt2by2": {"type": "real(dp)", "dimension": null}, "delt": {"type": "real(dp)", "dimension": null}, "tps": {"type": "real(dp)", "dimension": null}}
type :: time_step_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: delthal
  real(dp) :: twodelt
  real(dp) :: fordt2
  real(dp) :: dt2
  real(dp) :: dt2by2
  real(dp) :: delt
  real(dp) :: tps
  real(dp) :: tps
contains
  procedure, pass :: init => time_step_type_init
  procedure, pass :: update => time_step_type_update
end type time_step_type
