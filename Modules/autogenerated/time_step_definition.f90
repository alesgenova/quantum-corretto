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
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type time_step_type
