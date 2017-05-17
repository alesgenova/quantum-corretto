type :: extpot_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: textpot = .false.
  character(256) :: external_potential
  real(dp), allocatable, dimension(:) :: ext_pot
  real(dp), allocatable, dimension(:) :: ext_pot
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type extpot_type
