alloc_args = {}
init_args = {"npwx": {"type": "integer", "dimension": null}, "nbndx": {"type": "integer", "dimension": null}, "nbnd": {"type": "integer", "dimension": null}, "npw": {"type": "integer", "dimension": null}, "current_k": {"type": "integer", "dimension": null}, "igk": {"type": "integer", "dimension": ":"}, "ecutwfc": {"type": "real(dp)", "dimension": null}, "ecfixed": {"type": "real(dp)", "dimension": null}, "qcutz": {"type": "real(dp)", "dimension": null}, "q2sigma": {"type": "real(dp)", "dimension": null}, "et": {"type": "real(dp)", "dimension": ":,:"}, "wg": {"type": "real(dp)", "dimension": ":,:"}, "g2kin": {"type": "real(dp)", "dimension": ":"}, "btype": {"type": "integer", "dimension": ":,:"}}
type :: wvfct_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: npwx
  integer :: nbndx
  integer :: nbnd
  integer :: npw
  integer :: current_k
  integer, allocatable, dimension(:) :: igk ! dimensions = [":"]
  real(dp) :: ecutwfc
  real(dp) :: ecfixed
  real(dp) :: qcutz = 0.0_dp
  real(dp) :: q2sigma
  real(dp), allocatable, dimension(:,:) :: et ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: wg ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:) :: g2kin ! dimensions = [":"]
  integer, allocatable, dimension(:,:) :: btype ! dimensions = [":", ":"]

contains
  procedure, pass :: alloc => wvfct_type_alloc
  procedure, pass :: init => wvfct_type_init
  procedure, pass :: update => wvfct_type_update
  procedure, pass :: dealloc => wvfct_type_dealloc
end type wvfct_type
