init_args = {"ibrav": {"type": "integer", "dimension": null}, "celldm": {"type": "real(dp)", "dimension": "6"}, "a": {"type": "real(dp)", "dimension": null}, "b": {"type": "real(dp)", "dimension": null}, "c": {"type": "real(dp)", "dimension": null}, "cosab": {"type": "real(dp)", "dimension": null}, "cosac": {"type": "real(dp)", "dimension": null}, "cosbc": {"type": "real(dp)", "dimension": null}, "cell_units": {"type": "character(len=80)", "dimension": null}, "alat": {"type": "real(dp)", "dimension": null}, "omega": {"type": "real(dp)", "dimension": null}, "tpiba": {"type": "real(dp)", "dimension": null}, "tpiba2": {"type": "real(dp)", "dimension": null}, "at": {"type": "real(dp)", "dimension": "3,3"}, "bg": {"type": "real(dp)", "dimension": "3,3"}, "ref_tpiba2": {"type": "real(dp)", "dimension": null}, "ref_at": {"type": "real(dp)", "dimension": "3,3"}, "ref_bg": {"type": "real(dp)", "dimension": "3,3"}, "init_tpiba2": {"type": "real(dp)", "dimension": null}, "h": {"type": "real(dp)", "dimension": "3,3"}, "ainv": {"type": "real(dp)", "dimension": "3,3"}, "hold": {"type": "real(dp)", "dimension": "3,3"}, "hnew": {"type": "real(dp)", "dimension": "3,3"}, "velh": {"type": "real(dp)", "dimension": "3,3"}, "deth": {"type": "real(dp)", "dimension": null}, "iforceh": {"type": "integer", "dimension": "3,3"}, "fix_volume": {"type": "logical", "dimension": null}, "fix_area": {"type": "logical", "dimension": null}, "isotropic": {"type": "logical", "dimension": null}, "wmass": {"type": "real(dp)", "dimension": null}, "press": {"type": "real(dp)", "dimension": null}, "frich": {"type": "real(dp)", "dimension": null}, "greash": {"type": "real(dp)", "dimension": null}, "tcell_base_init": {"type": "logical", "dimension": null}}
type :: cell_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ibrav
  real(dp), dimension(6) :: celldm = (/ 0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp /)
  real(dp) :: a
  real(dp) :: b
  real(dp) :: c
  real(dp) :: cosab
  real(dp) :: cosac
  real(dp) :: cosbc
  character(len=80) :: cell_units
  real(dp) :: alat = 0.0_dp
  real(dp) :: omega = 0.0_dp
  real(dp) :: tpiba = 0.0_dp
  real(dp) :: tpiba2 = 0.0_dp
  real(dp), dimension(3,3) :: at = reshape( (/ 0.0_dp /), (/ 3, 3 /), (/ 0.0_dp /) )
  real(dp), dimension(3,3) :: bg = reshape( (/ 0.0_dp /), (/ 3, 3 /), (/ 0.0_dp /) )
  real(dp) :: ref_tpiba2 = 0.0_dp
  real(dp), dimension(3,3) :: ref_at = reshape( (/ 0.0_dp /), (/ 3, 3 /), (/ 0.0_dp /) )
  real(dp), dimension(3,3) :: ref_bg = reshape( (/ 0.0_dp /), (/ 3, 3 /), (/ 0.0_dp /) )
  real(dp) :: init_tpiba2 = 0.0_dp
  real(dp), dimension(3,3) :: h = 0.0_dp
  real(dp), dimension(3,3) :: ainv = 0.0_dp
  real(dp), dimension(3,3) :: hold = 0.0_dp
  real(dp), dimension(3,3) :: hnew = 0.0_dp
  real(dp), dimension(3,3) :: velh = 0.0_dp
  real(dp) :: deth = 0.0_dp
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
  procedure, pass :: init
  procedure, pass :: update
end type cell_base_type
