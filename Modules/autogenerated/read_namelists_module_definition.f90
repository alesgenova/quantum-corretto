type :: read_namelists_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: sm_not_set = -20.0_dp
  real(dp) :: sm_not_set = -20.0_dp
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type read_namelists_module_type
