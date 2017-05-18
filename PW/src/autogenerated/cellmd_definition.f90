init_args = {"press": {"type": "real(dp)", "dimension": null}, "cmass": {"type": "real(dp)", "dimension": null}, "at_old": {"type": "real(dp)", "dimension": "3,3"}, "omega_old": {"type": "real(dp)", "dimension": null}, "cell_factor": {"type": "real(dp)", "dimension": null}, "nzero": {"type": "integer", "dimension": null}, "ntimes": {"type": "integer", "dimension": null}, "ntcheck": {"type": "integer", "dimension": null}, "lmovecell": {"type": "logical", "dimension": null}, "calc": {"type": "character(len=2)", "dimension": null}}
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
  procedure, pass :: init => cellmd_type_init
  procedure, pass :: update => cellmd_type_update
end type cellmd_type
