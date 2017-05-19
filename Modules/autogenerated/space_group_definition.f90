init_args = {"unterz": {"type": "real(dp)", "dimension": null}, "duterz": {"type": "real(dp)", "dimension": null}, "unsest": {"type": "real(dp)", "dimension": null}, "cisest": {"type": "real(dp)", "dimension": null}}
type :: space_group_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: unterz = (1.0_dp)/(3.0_dp)
  real(dp) :: duterz = (2.0_dp)/(3.0_dp)
  real(dp) :: unsest = (1.0_dp)/(6.0_dp)
  real(dp) :: cisest = (5.0_dp)/(6.0_dp)

contains
  procedure, pass :: init => space_group_type_init
  procedure, pass :: update => space_group_type_update
end type space_group_type
