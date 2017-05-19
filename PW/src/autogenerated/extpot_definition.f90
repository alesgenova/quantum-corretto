alloc_args = {}
init_args = {"textpot": {"type": "logical", "dimension": null}, "external_potential": {"type": "character(256)", "dimension": null}, "ext_pot": {"type": "real(dp)", "dimension": ":"}}
type :: extpot_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: textpot = .false.
  character(256) :: external_potential
  real(dp), allocatable, dimension(:) :: ext_pot ! dimensions = [":"]

contains
  procedure, pass :: alloc => extpot_type_alloc
  procedure, pass :: init => extpot_type_init
  procedure, pass :: update => extpot_type_update
  procedure, pass :: dealloc => extpot_type_dealloc
end type extpot_type
