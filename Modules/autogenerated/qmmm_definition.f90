alloc_args = {}
init_args = {"qmmm_comm": {"type": "integer", "dimension": null}, "qmmm_step": {"type": "integer", "dimension": null}, "qmmm_mode": {"type": "integer", "dimension": null}, "qmmm_verb": {"type": "integer", "dimension": null}, "QMMM_TAG_OTHER": {"type": "integer", "dimension": null}, "QMMM_TAG_SIZE": {"type": "integer", "dimension": null}, "QMMM_TAG_COORD": {"type": "integer", "dimension": null}, "QMMM_TAG_FORCE": {"type": "integer", "dimension": null}, "QMMM_TAG_FORCE2": {"type": "integer", "dimension": null}, "QMMM_TAG_CELL": {"type": "integer", "dimension": null}, "QMMM_TAG_RADII": {"type": "integer", "dimension": null}, "QMMM_TAG_CHARGE": {"type": "integer", "dimension": null}, "QMMM_TAG_TYPE": {"type": "integer", "dimension": null}, "QMMM_TAG_MASS": {"type": "integer", "dimension": null}, "QMMM_FORCE_CONV": {"type": "real(dp)", "dimension": null}, "tmp_buf": {"type": "real(dp)", "dimension": ":,:"}, "r0": {"type": "real(dp)", "dimension": "3"}, "do_init_r0": {"type": "logical", "dimension": null}, "charge": {"type": "real(dp)", "dimension": ":"}, "aradii": {"type": "real(dp)", "dimension": ":"}, "tau_mm": {"type": "real(dp)", "dimension": ":,:"}, "force_mm": {"type": "real(dp)", "dimension": ":,:"}, "force_qm": {"type": "real(dp)", "dimension": ":,:"}, "tau_mask": {"type": "integer", "dimension": ":"}, "rc_mm": {"type": "real(dp)", "dimension": ":"}, "charge_mm": {"type": "real(dp)", "dimension": ":"}, "mass": {"type": "real(dp)", "dimension": ":"}, "types": {"type": "integer", "dimension": ":"}, "cell_data": {"type": "real(dp)", "dimension": "9"}, "cell_mm": {"type": "real(dp)", "dimension": "9"}, "nat_mm": {"type": "integer", "dimension": null}, "nat_qm": {"type": "integer", "dimension": null}, "nat_all": {"type": "integer", "dimension": null}, "ntypes": {"type": "integer", "dimension": null}}
type :: qmmm_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: qmmm_comm = mpi_comm_null
  integer :: qmmm_step = -1
  integer :: qmmm_mode = -1
  integer :: qmmm_verb = -1
  integer :: QMMM_TAG_OTHER = 0
  integer :: QMMM_TAG_SIZE = 1
  integer :: QMMM_TAG_COORD = 2
  integer :: QMMM_TAG_FORCE = 3
  integer :: QMMM_TAG_FORCE2 = 4
  integer :: QMMM_TAG_CELL = 5
  integer :: QMMM_TAG_RADII = 6
  integer :: QMMM_TAG_CHARGE = 7
  integer :: QMMM_TAG_TYPE = 8
  integer :: QMMM_TAG_MASS = 9
  real(dp) :: QMMM_FORCE_CONV = 592.91102087727177_dp
  real(dp), allocatable, dimension(:,:) :: tmp_buf ! dimensions = [":", ":"]
  real(dp), dimension(3) :: r0 = (/ 0.0_dp
  logical :: do_init_r0 = .true.
  real(dp), allocatable, dimension(:) :: charge ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: aradii ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: tau_mm ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: force_mm ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: force_qm ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: tau_mask ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: rc_mm ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: charge_mm ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: mass ! dimensions = [":"]
  integer, allocatable, dimension(:) :: types ! dimensions = [":"]
  real(dp), dimension(9) :: cell_data
  real(dp), dimension(9) :: cell_mm
  integer :: nat_mm
  integer :: nat_qm
  integer :: nat_all
  integer :: ntypes

contains
  procedure, pass :: alloc => qmmm_type_alloc
  procedure, pass :: init => qmmm_type_init
  procedure, pass :: update => qmmm_type_update
  procedure, pass :: dealloc => qmmm_type_dealloc
end type qmmm_type
