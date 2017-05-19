alloc_args = {}
init_args = {"ngw": {"type": "integer", "dimension": null}, "ngw_g": {"type": "integer", "dimension": null}, "ngwx": {"type": "integer", "dimension": null}, "ecutwfc": {"type": "real(dp)", "dimension": null}, "gcutw": {"type": "real(dp)", "dimension": null}, "ecfixed": {"type": "real(dp)", "dimension": null}, "qcutz": {"type": "real(dp)", "dimension": null}, "q2sigma": {"type": "real(dp)", "dimension": null}, "ekcut": {"type": "real(dp)", "dimension": null}, "gkcut": {"type": "real(dp)", "dimension": null}, "g2kin": {"type": "real(dp)", "dimension": ":"}}
type :: gvecw_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ngw = 0
  integer :: ngw_g = 0
  integer :: ngwx = 0
  real(dp) :: ecutwfc = 0.0_dp
  real(dp) :: gcutw = 0.0_dp
  real(dp) :: ecfixed = 0.0_dp
  real(dp) :: qcutz = 0.0_dp
  real(dp) :: q2sigma = 0.0_dp
  real(dp) :: ekcut = 0.0_dp
  real(dp) :: gkcut = 0.0_dp
  real(dp), allocatable, dimension(:) :: g2kin ! dimensions = [":"]

contains
  procedure, pass :: alloc => gvecw_type_alloc
  procedure, pass :: init => gvecw_type_init
  procedure, pass :: update => gvecw_type_update
  procedure, pass :: dealloc => gvecw_type_dealloc
end type gvecw_type
