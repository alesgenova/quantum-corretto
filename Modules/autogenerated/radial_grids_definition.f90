init_args = {"ndmx": {"type": "integer", "dimension": null}}
type :: radial_grids_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ndmx = 3500

contains
  procedure, pass :: init => radial_grids_type_init
  procedure, pass :: update => radial_grids_type_update
end type radial_grids_type
