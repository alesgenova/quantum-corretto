init_args = {"ibnd_start": {"type": "integer", "dimension": null}, "ibnd_end": {"type": "integer", "dimension": null}}
type :: mp_bands_tddfpt_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ibnd_start = 0
  integer :: ibnd_end = 0

contains
  procedure, pass :: init => mp_bands_tddfpt_type_init
  procedure, pass :: update => mp_bands_tddfpt_type_update
end type mp_bands_tddfpt_type
