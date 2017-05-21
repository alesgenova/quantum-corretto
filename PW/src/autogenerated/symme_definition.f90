alloc_args = {}
init_args = {"no_rho_sym": {"type": "logical", "dimension": null}, "ngs": {"type": "integer", "dimension": null}, "shell": {"type": "type(shell_type)", "dimension": ":"}, "sendcnt": {"type": "integer", "dimension": ":"}, "recvcnt": {"type": "integer", "dimension": ":"}, "sdispls": {"type": "integer", "dimension": ":"}, "rdispls": {"type": "integer", "dimension": ":"}}
type :: symme_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: no_rho_sym = .true.
  integer :: ngs
  type(shell_type), allocatable, dimension(:) :: shell ! dimensions = [":"]
  integer, allocatable, dimension(:) :: sendcnt ! dimensions = [":"]
  integer, allocatable, dimension(:) :: recvcnt ! dimensions = [":"]
  integer, allocatable, dimension(:) :: sdispls ! dimensions = [":"]
  integer, allocatable, dimension(:) :: rdispls ! dimensions = [":"]

#ifdef __mpi 
#endif 

contains
  procedure, pass :: alloc => symme_type_alloc
  procedure, pass :: init => symme_type_init
  procedure, pass :: update => symme_type_update
  procedure, pass :: dealloc => symme_type_dealloc
end type symme_type
