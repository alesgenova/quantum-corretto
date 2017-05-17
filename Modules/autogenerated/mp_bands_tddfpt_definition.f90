type :: mp_bands_tddfpt_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ibnd_start = 0
  integer :: ibnd_end = 0
  integer :: ibnd_end = 0
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type mp_bands_tddfpt_type
