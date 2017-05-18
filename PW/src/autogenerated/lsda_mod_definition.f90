alloc_args = {}
init_args = {"lsda": {"type": "logical", "dimension": null}, "magtot": {"type": "real(dp)", "dimension": null}, "absmag": {"type": "real(dp)", "dimension": null}, "starting_magnetization": {"type": "real(dp)", "dimension": ":"}, "nspin": {"type": "integer", "dimension": null}, "current_spin": {"type": "integer", "dimension": null}, "isk": {"type": "integer", "dimension": ":"}}
type :: lsda_mod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: lsda
  real(dp) :: magtot
  real(dp) :: absmag
  real(dp), allocatable, dimension(:) :: starting_magnetization ! dimensions = [:]
  integer :: nspin
  integer :: current_spin
  integer, allocatable, dimension(:) :: isk ! dimensions = [:]
  integer, allocatable, dimension(:) :: isk ! dimensions = [:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type lsda_mod_type
