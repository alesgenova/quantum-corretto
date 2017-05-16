type :: extrapolation_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: alpha0
  real(dp) :: beta0
  integer :: history
  integer :: pot_order = 0
  integer :: wfc_order = 0
  integer :: wfc_order = 0
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type extrapolation_type
