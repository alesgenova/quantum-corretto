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
  procedure, pass :: alloc
  procedure, pass :: init
end type fcp_variables_type
