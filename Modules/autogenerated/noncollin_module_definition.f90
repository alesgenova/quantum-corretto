alloc_args = {}
init_args = {"npol": {"type": "integer", "dimension": null}, "report": {"type": "integer", "dimension": null}, "nspin_lsda": {"type": "integer", "dimension": null}, "nspin_mag": {"type": "integer", "dimension": null}, "nspin_gga": {"type": "integer", "dimension": null}, "i_cons": {"type": "integer", "dimension": null}, "pointlist": {"type": "integer", "dimension": ":"}, "noncolin": {"type": "logical", "dimension": null}, "lsign": {"type": "logical", "dimension": null}, "angle1": {"type": "real(dp)", "dimension": ":"}, "angle2": {"type": "real(dp)", "dimension": ":"}, "mcons": {"type": "real(dp)", "dimension": ":,:"}, "magtot_nc": {"type": "real(dp)", "dimension": "3"}, "bfield": {"type": "real(dp)", "dimension": "3"}, "vtcon": {"type": "real(dp)", "dimension": null}, "r_m": {"type": "real(dp)", "dimension": ":"}, "lambda": {"type": "real(dp)", "dimension": null}, "factlist": {"type": "real(dp)", "dimension": ":"}, "r_loc": {"type": "real(dp)", "dimension": ":"}, "m_loc": {"type": "real(dp)", "dimension": ":,:"}, "ux": {"type": "real(dp)", "dimension": "3"}}
type :: noncollin_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: npol
  integer :: report
  integer :: nspin_lsda = 1
  integer :: nspin_mag = 1
  integer :: nspin_gga = 1
  integer :: i_cons = 0
  integer, allocatable, dimension(:) :: pointlist ! dimensions = [:]
  logical :: noncolin
  logical :: lsign = .false.
  real(dp), allocatable, dimension(:) :: angle1 ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: angle2 ! dimensions = [:]
  real(dp), allocatable, dimension(:,:) :: mcons ! dimensions = [:,:]
  real(dp), dimension(3) :: magtot_nc
  real(dp), dimension(3) :: bfield = 0.d0
  real(dp) :: vtcon
  real(dp), allocatable, dimension(:) :: r_m ! dimensions = [:]
  real(dp) :: lambda
  real(dp), allocatable, dimension(:) :: factlist ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: r_loc ! dimensions = [:]
  real(dp), allocatable, dimension(:,:) :: m_loc ! dimensions = [:,:]
  real(dp), dimension(3) :: ux
  real(dp), dimension(3) :: ux
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type noncollin_module_type
