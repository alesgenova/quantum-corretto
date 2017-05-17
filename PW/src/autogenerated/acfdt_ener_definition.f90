type :: acfdt_ener_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: acfdt_in_pw = .false.
  real(dp) :: acfdt_eband
  real(dp) :: acfdt_eband
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type acfdt_ener_type
