type :: check_stop_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: max_seconds = 1.e+7_dp
  real(dp) :: init_second
  logical :: stopped_by_user = .false.
  logical :: tinit = .false.
  logical :: tinit = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type check_stop_type
