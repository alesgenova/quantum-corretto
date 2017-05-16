type :: radial_grids_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ndmx = 3500
  integer :: mesh
  real(dp), dimension(:), pointer :: r
  real(dp), dimension(:), pointer :: r2
  real(dp), dimension(:), pointer :: rab
  real(dp), dimension(:), pointer :: sqr
  real(dp), dimension(:), pointer :: rm1
  real(dp), dimension(:), pointer :: rm2
  real(dp), dimension(:), pointer :: rm3
  real(dp) :: xmin
  real(dp) :: rmax
  real(dp) :: zmesh
  real(dp) :: dx
  real(dp) :: dx
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type radial_grids_type
