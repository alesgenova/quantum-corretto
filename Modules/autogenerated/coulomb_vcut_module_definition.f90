init_args = {"DP": {"type": "integer", "dimension": null}, "PI": {"type": "real(dp)", "dimension": null}, "TPI": {"type": "real(dp)", "dimension": null}, "FPI": {"type": "real(dp)", "dimension": null}, "e2": {"type": "real(dp)", "dimension": null}, "eps6": {"type": "real(dp)", "dimension": null}}
type :: coulomb_vcut_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: DP = kind(1.0d0)
  real(dp) :: PI = 3.14159265358979323846_dp
  real(dp) :: TPI = 2.0_dp * pi
  real(dp) :: FPI = 4.0_dp * pi
  real(dp) :: e2 = 2.0_dp
  real(dp) :: eps6 = 1.0e-6_dp
  real(dp) :: eps6 = 1.0e-6_dp
contains
  procedure, pass :: init
  procedure, pass :: update
end type coulomb_vcut_module_type
