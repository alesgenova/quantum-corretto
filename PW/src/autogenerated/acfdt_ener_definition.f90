init_args = {"acfdt_eband": {"type": "real(dp)", "dimension": null}}
type :: acfdt_ener_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: acfdt_eband

contains
  procedure, pass :: init => acfdt_ener_type_init
  procedure, pass :: update => acfdt_ener_type_update
end type acfdt_ener_type
