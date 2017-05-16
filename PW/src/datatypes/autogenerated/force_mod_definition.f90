type :: force_mod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:,:) :: force
  real(dp) :: sumfor
  real(dp), dimension(3,3) :: sigma
  logical :: lforce
  logical :: lstres
  logical :: lstres
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type force_mod_type
