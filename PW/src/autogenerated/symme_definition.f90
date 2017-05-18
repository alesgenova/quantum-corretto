alloc_args = {}
init_args = {"no_rho_sym": {"type": "logical", "dimension": null}, "ngs": {"type": "integer", "dimension": null}, "shell": {"type": "type(shell_type)", "dimension": ":"}, "sendcnt": {"type": "integer", "dimension": ":"}, "recvcnt": {"type": "integer", "dimension": ":"}, "sdispls": {"type": "integer", "dimension": ":"}, "rdispls": {"type": "integer", "dimension": ":"}}
type :: symme_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: no_rho_sym = .true.
  integer :: ngs
  type(shell_type), allocatable, dimension(:) :: shell ! dimensions = [:]
  integer, allocatable, dimension(:) :: sendcnt ! dimensions = [:]
  integer, allocatable, dimension(:) :: recvcnt ! dimensions = [:]
  integer, allocatable, dimension(:) :: sdispls ! dimensions = [:]
  integer, allocatable, dimension(:) :: rdispls ! dimensions = [:]
  integer, allocatable, dimension(:) :: rdispls ! dimensions = [:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type symme_type
