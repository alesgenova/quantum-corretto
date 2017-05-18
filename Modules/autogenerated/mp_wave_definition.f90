init_args = {}
type :: mp_wave_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => mp_wave_type_init
  procedure, pass :: update => mp_wave_type_update
end type mp_wave_type
