type :: lsda_mod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: lsda
  real(dp) :: magtot
  real(dp) :: absmag
  real(dp), dimension(ntypx) :: starting_magnetization
  integer :: nspin
  integer :: current_spin
  integer, dimension(npk) :: isk
  integer, dimension(npk) :: isk
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type lsda_mod_type
