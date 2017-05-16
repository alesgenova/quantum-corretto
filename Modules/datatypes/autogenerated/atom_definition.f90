type :: atom_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(radial_grid_type), allocatable, dimension(:) :: rgrid
  integer, allocatable, dimension(:) :: msh
  integer, allocatable, dimension(:) :: msh
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type atom_type
