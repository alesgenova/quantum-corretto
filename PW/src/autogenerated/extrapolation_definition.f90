init_args = {"alpha0": {"type": "real(dp)", "dimension": null}, "beta0": {"type": "real(dp)", "dimension": null}, "history": {"type": "integer", "dimension": null}, "pot_order": {"type": "integer", "dimension": null}, "wfc_order": {"type": "integer", "dimension": null}}
type :: extrapolation_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: alpha0
  real(dp) :: beta0
  integer :: history
  integer :: pot_order = 0
  integer :: wfc_order = 0

contains
  procedure, pass :: init => extrapolation_type_init
  procedure, pass :: update => extrapolation_type_update
end type extrapolation_type
