type :: cell_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ibrav
  real(dp), dimension(6) :: celldm = (/ 0.0_dp
  real(dp), dimension(3,3) :: a
  real(dp) :: b
  real(dp) :: c
  real(dp) :: cosab
  real(dp) :: cosac
  real(dp) :: cosbc
  character(len=80) :: cell_units
  real(dp) :: alat = 0.0_dp
  real(dp) :: omega
  real(dp) :: tpiba = 0.0_dp
  real(dp) :: tpiba2 = 0.0_dp
  real(dp), dimension(3,3) :: at = reshape( (/ 0.0_dp /)
  real(dp), dimension(3,3) :: bg = reshape( (/ 0.0_dp /)
  real(dp) :: ref_tpiba2 = 0.0_dp
  real(dp), dimension(3,3) :: ref_at = reshape( (/ 0.0_dp /)
  real(dp), dimension(3,3) :: ref_bg = reshape( (/ 0.0_dp /)
  real(dp) :: init_tpiba2 = 0.0_dp
  real(dp), dimension(3,3) :: m1
  real(dp), dimension(3,3) :: g
  real(dp), dimension(3,3) :: gvel
  real(dp), dimension(3,3) :: pail
  real(dp), dimension(3,3) :: paiu
  real(dp), dimension(3,3) :: hmat
  real(dp), dimension(3,3) :: hvel
  real(dp), dimension(3,3) :: hinv
  real(dp) :: deth = 0.0_dp
  integer, dimension(3) :: perd
  real(dp), dimension(3,3) :: h = 0.0_dp
  real(dp), dimension(3,3) :: ainv = 0.0_dp
  real(dp), dimension(3,3) :: hold = 0.0_dp
  real(dp), dimension(3,3) :: hnew = 0.0_dp
  real(dp), dimension(3,3) :: velh = 0.0_dp
  integer, dimension(3,3) :: iforceh = 1
  logical :: fix_volume = .false.
  logical :: fix_area = .false.
  logical :: isotropic = .false.
  real(dp) :: wmass = 0.0_dp
  real(dp) :: press = 0.0_dp
  real(dp) :: frich = 0.0_dp
  real(dp) :: greash = 1.0_dp
  logical :: tcell_base_init = .false.
  logical :: tcell_base_init = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type cell_base_type
