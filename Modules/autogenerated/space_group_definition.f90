type :: space_group_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: unterz = (1.0_dp)/(3.0_dp)
  real(dp) :: duterz = (2.0_dp)/(3.0_dp)
  real(dp) :: unsest = (1.0_dp)/(6.0_dp)
  real(dp) :: cisest = (5.0_dp)/(6.0_dp)
  real(dp) :: cisest = (5.0_dp)/(6.0_dp)
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type space_group_type
