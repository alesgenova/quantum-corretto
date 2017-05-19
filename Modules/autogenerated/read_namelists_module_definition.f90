init_args = {"sm_not_set": {"type": "real(dp)", "dimension": null}}
type :: read_namelists_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: sm_not_set = -20.0_dp

contains
  procedure, pass :: init => read_namelists_module_type_init
  procedure, pass :: update => read_namelists_module_type_update
end type read_namelists_module_type
