init_args = {"acfdt_in_pw": {"type": "logical", "dimension": null}, "acfdt_eband": {"type": "real(dp)", "dimension": null}}
type :: acfdt_ener_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: acfdt_in_pw = .false.
  real(dp) :: acfdt_eband
  real(dp) :: acfdt_eband
contains
  procedure, pass :: init
  procedure, pass :: update
end type acfdt_ener_type
