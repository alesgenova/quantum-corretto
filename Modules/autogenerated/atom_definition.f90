alloc_args = {}
init_args = {"rgrid": {"type": "type(radial_grid_type)", "dimension": ":"}, "msh": {"type": "integer", "dimension": ":"}}
type :: atom_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(radial_grid_type), allocatable, dimension(:) :: rgrid ! dimensions = [:]
  integer, allocatable, dimension(:) :: msh ! dimensions = [:]
  integer, allocatable, dimension(:) :: msh ! dimensions = [:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type atom_type
