init_args = {"epsr": {"type": "real(dp)", "dimension": null}, "epsg": {"type": "real(dp)", "dimension": null}, "b_value": {"type": "real(dp)", "dimension": null}, "C_value": {"type": "real(dp)", "dimension": null}}
type :: rvv10_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: epsr = 1.d-12
  real(dp) :: epsg = 1.d-10
  real(dp) :: b_value = 6.3_dp
  real(dp) :: C_value = 0.0093
  real(dp) :: C_value = 0.0093
contains
  procedure, pass :: init => rvv10_type_init
  procedure, pass :: update => rvv10_type_update
end type rvv10_type
