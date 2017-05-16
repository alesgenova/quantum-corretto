type :: bfgs_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=8) :: fname = "energy"
  real(dp), allocatable, dimension(:) :: pos
  real(dp), allocatable, dimension(:) :: grad
  real(dp), allocatable, dimension(:) :: pos_p
  real(dp), allocatable, dimension(:) :: grad_p
  real(dp), allocatable, dimension(:,:) :: inv_hess
  real(dp), allocatable, dimension(:,:) :: metric
  real(dp), allocatable, dimension(:,:) :: h_block
  real(dp), allocatable, dimension(:,:) :: hinv_block
  real(dp), allocatable, dimension(:) :: step
  real(dp), allocatable, dimension(:) :: step_old
  real(dp), allocatable, dimension(:,:) :: pos_old
  real(dp), allocatable, dimension(:,:) :: grad_old
  real(dp), allocatable, dimension(:) :: pos_best
  real(dp) :: nr_step_length
  real(dp) :: nr_step_length_old
  real(dp) :: trust_radius
  real(dp) :: trust_radius_old
  real(dp) :: energy_p
  integer :: scf_iter
  integer :: bfgs_iter
  integer :: gdiis_iter
  integer :: tr_min_hit = 0
  logical :: conv_bfgs
  integer :: bfgs_ndim
  real(dp) :: trust_radius_ini
  real(dp) :: trust_radius_min
  real(dp) :: trust_radius_max
  real(dp) :: w_1
  real(dp) :: w_2
  real(dp) :: w_2
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type bfgs_module_type
