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
  real(dp), allocatable, dimension(:,:) :: tmp_buf
  real(dp), dimension(3) :: r0 = (/ 0.0_dp
  logical :: do_init_r0 = .true.
  real(dp), allocatable, dimension(:) :: charge
  real(dp), allocatable, dimension(:) :: aradii
  real(dp), allocatable, dimension(:,:) :: tau_mm
  real(dp), allocatable, dimension(:,:) :: force_mm
  real(dp), allocatable, dimension(:,:) :: force_qm
  integer, allocatable, dimension(:) :: tau_mask
  real(dp), allocatable, dimension(:) :: rc_mm
  real(dp), allocatable, dimension(:) :: charge_mm
  real(dp), allocatable, dimension(:) :: mass
  integer, allocatable, dimension(:) :: types
  real(dp), dimension(9) :: cell_data
  real(dp), dimension(9) :: cell_mm
  integer :: nat_mm
  integer :: nat_qm
  integer :: nat_all
  integer :: ntypes
  integer :: ntypes
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type qmmm_type
