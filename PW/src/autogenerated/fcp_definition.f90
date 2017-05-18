init_args = {"vel_defined": {"type": "logical", "dimension": null}, "tau": {"type": "real(dp)", "dimension": null}, "tau_old": {"type": "real(dp)", "dimension": null}, "tau_new": {"type": "real(dp)", "dimension": null}, "vel": {"type": "real(dp)", "dimension": null}, "acc": {"type": "real(dp)", "dimension": null}}
type :: fcp_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: vel_defined
  real(dp) :: tau
  real(dp) :: tau_old
  real(dp) :: tau_new
  real(dp) :: vel
  real(dp) :: acc
  real(dp) :: acc
contains
  procedure, pass :: init
  procedure, pass :: update
end type fcp_type
