alloc_args = {}
init_args = {"textpot": {"type": "logical", "dimension": null}, "external_potential": {"type": "character(256)", "dimension": null}, "ext_pot": {"type": "real(dp)", "dimension": ":"}}
type :: extpot_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: textpot = .false.
  character(256) :: external_potential
  real(dp), allocatable, dimension(:) :: ext_pot ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: ext_pot ! dimensions = [:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type extpot_type
