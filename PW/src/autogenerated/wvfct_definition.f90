alloc_args = {}
init_args = {"npwx": {"type": "integer", "dimension": null}, "nbndx": {"type": "integer", "dimension": null}, "nbnd": {"type": "integer", "dimension": null}, "npw": {"type": "integer", "dimension": null}, "current_k": {"type": "integer", "dimension": null}, "et": {"type": "real(dp)", "dimension": ":,:"}, "wg": {"type": "real(dp)", "dimension": ":,:"}, "g2kin": {"type": "real(dp)", "dimension": ":"}, "btype": {"type": "integer", "dimension": ":,:"}}
type :: wvfct_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: npwx
  integer :: nbndx
  integer :: nbnd
  integer :: npw
  integer :: current_k
  real(dp), allocatable, dimension(:,:) :: et ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: wg ! dimensions = [:,:]
  real(dp), allocatable, dimension(:) :: g2kin ! dimensions = [:]
  integer, allocatable, dimension(:,:) :: btype ! dimensions = [:,:]
  integer, allocatable, dimension(:,:) :: btype ! dimensions = [:,:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type wvfct_type
