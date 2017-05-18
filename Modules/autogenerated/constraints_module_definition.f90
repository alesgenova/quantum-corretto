alloc_args = {}
init_args = {"nconstr": {"type": "integer", "dimension": null}, "constr_tol": {"type": "real(dp)", "dimension": null}, "constr_type": {"type": "integer", "dimension": ":"}, "constr": {"type": "real(dp)", "dimension": ":,:"}, "constr_target": {"type": "real(dp)", "dimension": ":"}, "lagrange": {"type": "real(dp)", "dimension": ":"}, "gp": {"type": "real(dp)", "dimension": ":"}, "dmax": {"type": "real(dp)", "dimension": null}}
type :: constraints_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nconstr = 0
  real(dp) :: constr_tol
  integer, allocatable, dimension(:) :: constr_type ! dimensions = [:]
  real(dp), allocatable, dimension(:,:) :: constr ! dimensions = [:,:]
  real(dp), allocatable, dimension(:) :: constr_target ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: lagrange ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: gp ! dimensions = [:]
  real(dp) :: dmax
  real(dp) :: dmax
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type constraints_module_type
