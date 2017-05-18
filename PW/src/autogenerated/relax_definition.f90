init_args = {"epse": {"type": "real(dp)", "dimension": null}, "epsf": {"type": "real(dp)", "dimension": null}, "epsp": {"type": "real(dp)", "dimension": null}, "starting_scf_threshold": {"type": "real(dp)", "dimension": null}}
type :: relax_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: epse = 0.0_dp
  real(dp) :: epsf
  real(dp) :: epsp
  real(dp) :: starting_scf_threshold
  real(dp) :: starting_scf_threshold
contains
  procedure, pass :: init
  procedure, pass :: update
end type relax_type
