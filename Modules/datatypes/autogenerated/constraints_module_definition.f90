type :: constraints_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nconstr = 0
  real(dp) :: constr_tol
  integer, allocatable, dimension(:) :: constr_type
  real(dp), allocatable, dimension(:,:) :: constr
  real(dp), allocatable, dimension(:) :: constr_target
  real(dp), allocatable, dimension(:) :: lagrange
  real(dp), allocatable, dimension(:) :: gp
  real(dp) :: dmax
  real(dp) :: dmax
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type constraints_module_type
