type :: radial_grids_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ndmx = 20000
  integer :: ndmx = 20000
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type radial_grids_type
