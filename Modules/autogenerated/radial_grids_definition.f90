init_args = {"ndmx": {"type": "integer", "dimension": null}}
type :: radial_grids_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ndmx = 20000
  integer :: ndmx = 20000
contains
  procedure, pass :: init
  procedure, pass :: update
end type radial_grids_type
