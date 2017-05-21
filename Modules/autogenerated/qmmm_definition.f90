alloc_args = {}
init_args = {"qmmm_comm": {"type": "integer", "dimension": null}, "qmmm_step": {"type": "integer", "dimension": null}, "qmmm_mode": {"type": "integer", "dimension": null}, "qmmm_verb": {"type": "integer", "dimension": null}, "QMMM_TAG_OTHER": {"type": "integer", "dimension": null}, "QMMM_TAG_SIZE": {"type": "integer", "dimension": null}, "QMMM_TAG_COORD": {"type": "integer", "dimension": null}, "QMMM_TAG_FORCE": {"type": "integer", "dimension": null}, "QMMM_FORCE_CONV": {"type": "real(dp)", "dimension": null}, "nat_qm": {"type": "integer", "dimension": null}, "tmp_buf": {"type": "real(dp)", "dimension": ":,:"}, "r0": {"type": "real(dp)", "dimension": "3"}, "do_init_r0": {"type": "logical", "dimension": null}}
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
  real(dp) :: QMMM_FORCE_CONV = 592.91102087727177_dp
  integer :: nat_qm
  real(dp), allocatable, dimension(:,:) :: tmp_buf ! dimensions = [":", ":"]
  real(dp), dimension(3) :: r0 = (/ 0.0_dp
  logical :: do_init_r0 = .true.

contains
  procedure, pass :: alloc => qmmm_type_alloc
  procedure, pass :: init => qmmm_type_init
  procedure, pass :: update => qmmm_type_update
  procedure, pass :: dealloc => qmmm_type_dealloc
end type qmmm_type
