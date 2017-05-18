init_args = {"frice": {"type": "real(dp)", "dimension": null}, "grease": {"type": "real(dp)", "dimension": null}}
type :: wave_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: frice = 0.0_dp
  real(dp) :: grease = 0.0_dp
  real(dp) :: grease = 0.0_dp
contains
  procedure, pass :: init => wave_base_type_init
  procedure, pass :: update => wave_base_type_update
end type wave_base_type
