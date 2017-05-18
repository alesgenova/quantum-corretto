alloc_args = {}
init_args = {"fname": {"type": "character(len=8)", "dimension": null}, "pos": {"type": "real(dp)", "dimension": ":"}, "grad": {"type": "real(dp)", "dimension": ":"}, "pos_p": {"type": "real(dp)", "dimension": ":"}, "grad_p": {"type": "real(dp)", "dimension": ":"}, "inv_hess": {"type": "real(dp)", "dimension": ":,:"}, "metric": {"type": "real(dp)", "dimension": ":,:"}, "h_block": {"type": "real(dp)", "dimension": ":,:"}, "hinv_block": {"type": "real(dp)", "dimension": ":,:"}, "step": {"type": "real(dp)", "dimension": ":"}, "step_old": {"type": "real(dp)", "dimension": ":"}, "pos_old": {"type": "real(dp)", "dimension": ":,:"}, "grad_old": {"type": "real(dp)", "dimension": ":,:"}, "pos_best": {"type": "real(dp)", "dimension": ":"}, "nr_step_length": {"type": "real(dp)", "dimension": null}, "nr_step_length_old": {"type": "real(dp)", "dimension": null}, "trust_radius": {"type": "real(dp)", "dimension": null}, "trust_radius_old": {"type": "real(dp)", "dimension": null}, "energy_p": {"type": "real(dp)", "dimension": null}, "scf_iter": {"type": "integer", "dimension": null}, "bfgs_iter": {"type": "integer", "dimension": null}, "gdiis_iter": {"type": "integer", "dimension": null}, "tr_min_hit": {"type": "integer", "dimension": null}, "conv_bfgs": {"type": "logical", "dimension": null}, "bfgs_ndim": {"type": "integer", "dimension": null}, "trust_radius_ini": {"type": "real(dp)", "dimension": null}, "trust_radius_min": {"type": "real(dp)", "dimension": null}, "trust_radius_max": {"type": "real(dp)", "dimension": null}, "w_1": {"type": "real(dp)", "dimension": null}, "w_2": {"type": "real(dp)", "dimension": null}}
type :: bfgs_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=8) :: fname = "energy"
  real(dp), allocatable, dimension(:) :: pos ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: grad ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: pos_p ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: grad_p ! dimensions = [:]
  real(dp), allocatable, dimension(:,:) :: inv_hess ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: metric ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: h_block ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: hinv_block ! dimensions = [:,:]
  real(dp), allocatable, dimension(:) :: step ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: step_old ! dimensions = [:]
  real(dp), allocatable, dimension(:,:) :: pos_old ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: grad_old ! dimensions = [:,:]
  real(dp), allocatable, dimension(:) :: pos_best ! dimensions = [:]
  real(dp) :: nr_step_length
  real(dp) :: nr_step_length_old
  real(dp) :: trust_radius
  real(dp) :: trust_radius_old
  real(dp) :: energy_p
  integer :: scf_iter
  integer :: bfgs_iter
  integer :: gdiis_iter
  integer :: tr_min_hit = 0
  logical :: conv_bfgs
  integer :: bfgs_ndim
  real(dp) :: trust_radius_ini
  real(dp) :: trust_radius_min
  real(dp) :: trust_radius_max
  real(dp) :: w_1
  real(dp) :: w_2
  real(dp) :: w_2
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type bfgs_module_type
