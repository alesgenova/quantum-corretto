init_args = {"lfcpopt": {"type": "logical", "dimension": null}, "lfcpdyn": {"type": "logical", "dimension": null}, "fcp_mu": {"type": "real(dp)", "dimension": null}, "fcp_mass": {"type": "real(dp)", "dimension": null}, "fcp_temperature": {"type": "real(dp)", "dimension": null}, "fcp_relax_step": {"type": "real(dp)", "dimension": null}, "fcp_relax_crit": {"type": "real(dp)", "dimension": null}, "fcp_tot_charge_first": {"type": "real(dp)", "dimension": null}, "fcp_tot_charge_last": {"type": "real(dp)", "dimension": null}}
type :: fcp_variables_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: lfcpopt = .false.
  logical :: lfcpdyn = .false.
  real(dp) :: fcp_mu = 0.0_dp
  real(dp) :: fcp_mass = 10000.0_dp
  real(dp) :: fcp_temperature = 0.0_dp
  real(dp) :: fcp_relax_step = 0.5_dp
  real(dp) :: fcp_relax_crit = 0.001_dp
  real(dp) :: fcp_tot_charge_first = 0.0_dp
  real(dp) :: fcp_tot_charge_last = 0.0_dp
  real(dp) :: fcp_tot_charge_last = 0.0_dp
contains
  procedure, pass :: init => fcp_variables_type_init
  procedure, pass :: update => fcp_variables_type_update
end type fcp_variables_type
