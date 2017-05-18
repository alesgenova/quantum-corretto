alloc_args = {}
init_args = {"dt": {"type": "real(dp)", "dimension": null}, "temperature": {"type": "real(dp)", "dimension": null}, "virial": {"type": "real(dp)", "dimension": null}, "delta_t": {"type": "real(dp)", "dimension": null}, "nraise": {"type": "integer", "dimension": null}, "ndof": {"type": "integer", "dimension": null}, "num_accept": {"type": "integer", "dimension": null}, "vel_defined": {"type": "logical", "dimension": null}, "control_temp": {"type": "logical", "dimension": null}, "refold_pos": {"type": "logical", "dimension": null}, "first_iter": {"type": "logical", "dimension": null}, "tau_smart": {"type": "real(dp)", "dimension": ":,:"}, "force_smart": {"type": "real(dp)", "dimension": ":,:"}, "etot_smart": {"type": "real(dp)", "dimension": null}, "tau_old": {"type": "real(dp)", "dimension": ":,:"}, "tau_new": {"type": "real(dp)", "dimension": ":,:"}, "tau_ref": {"type": "real(dp)", "dimension": ":,:"}, "vel": {"type": "real(dp)", "dimension": ":,:"}, "acc": {"type": "real(dp)", "dimension": ":,:"}, "chi": {"type": "real(dp)", "dimension": ":,:"}, "mass": {"type": "real(dp)", "dimension": ":"}, "diff_coeff": {"type": "real(dp)", "dimension": ":"}, "radial_distr": {"type": "real(dp)", "dimension": ":,:"}, "hist_len": {"type": "integer", "dimension": null}}
type :: dynamics_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: dt
  real(dp) :: temperature
  real(dp) :: virial
  real(dp) :: delta_t
  integer :: nraise
  integer :: ndof
  integer :: num_accept = 0
  logical :: vel_defined
  logical :: control_temp
  logical :: refold_pos
  logical :: first_iter = .true.
  real(dp), allocatable, dimension(:,:) :: tau_smart ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: force_smart ! dimensions = [:,:]
  real(dp) :: etot_smart
  real(dp), allocatable, dimension(:,:) :: tau_old ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: tau_new ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: tau_ref ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: vel ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: acc ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: chi ! dimensions = [:,:]
  real(dp), allocatable, dimension(:) :: mass ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: diff_coeff ! dimensions = [:]
  real(dp), allocatable, dimension(:,:) :: radial_distr ! dimensions = [:,:]
  integer :: hist_len = 1000
  integer :: hist_len = 1000
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type dynamics_module_type
