type :: wave_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: frice = 0.0_dp
  real(dp) :: grease = 0.0_dp
  real(dp) :: grease = 0.0_dp
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type wave_base_type
