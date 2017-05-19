alloc_args = {}
init_args = {"smearing": {"type": "character(len=32)", "dimension": null}, "xk": {"type": "real(dp)", "dimension": ":,:"}, "wk": {"type": "real(dp)", "dimension": ":"}, "xqq": {"type": "real(dp)", "dimension": "3"}, "degauss": {"type": "real(dp)", "dimension": null}, "nelec": {"type": "real(dp)", "dimension": null}, "nelup": {"type": "real(dp)", "dimension": null}, "neldw": {"type": "real(dp)", "dimension": null}, "tot_magnetization": {"type": "real(dp)", "dimension": null}, "tot_charge": {"type": "real(dp)", "dimension": null}, "qnorm": {"type": "real(dp)", "dimension": null}, "igk_k": {"type": "integer", "dimension": ":,:"}, "ngk": {"type": "integer", "dimension": ":"}, "nks": {"type": "integer", "dimension": null}, "nkstot": {"type": "integer", "dimension": null}, "ngauss": {"type": "integer", "dimension": null}, "lgauss": {"type": "logical", "dimension": null}, "ltetra": {"type": "logical", "dimension": null}, "lxkcry": {"type": "logical", "dimension": null}, "two_fermi_energies": {"type": "logical", "dimension": null}}
type :: klist_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=32) :: smearing
  real(dp), allocatable, dimension(:,:) :: xk ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:) :: wk ! dimensions = [":"]
  real(dp), dimension(3) :: xqq
  real(dp) :: degauss
  real(dp) :: nelec
  real(dp) :: nelup = 0.0_dp
  real(dp) :: neldw = 0.0_dp
  real(dp) :: tot_magnetization
  real(dp) :: tot_charge
  real(dp) :: qnorm = 0.0_dp
  integer, allocatable, dimension(:,:) :: igk_k ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: ngk ! dimensions = [":"]
  integer :: nks
  integer :: nkstot
  integer :: ngauss
  logical :: lgauss
  logical :: ltetra
  logical :: lxkcry = .false.
  logical :: two_fermi_energies

contains
  procedure, pass :: alloc => klist_type_alloc
  procedure, pass :: init => klist_type_init
  procedure, pass :: update => klist_type_update
  procedure, pass :: dealloc => klist_type_dealloc
end type klist_type
