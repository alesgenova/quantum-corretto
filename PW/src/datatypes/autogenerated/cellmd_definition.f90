type :: cellmd_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: press
  real(dp) :: cmass
  real(dp), dimension(3,3) :: at_old
  real(dp) :: omega_old
  real(dp) :: cell_factor = 0.0_dp
  integer :: nzero
  integer :: ntimes = -1
  integer :: ntcheck
  logical :: lmovecell
  character(len=2) :: calc = '  '
  character(len=2) :: calc = '  '
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type cellmd_type
