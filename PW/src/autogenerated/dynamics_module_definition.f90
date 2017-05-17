type :: dynamics_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: dt
  real(dp) :: temperature
  real(dp) :: virial
  real(dp) :: delta_t
  integer :: nraise
  integer :: ndof
  integer :: num_accept = 0
  logical :: vel_defined
  logical :: control_temp
  logical :: refold_pos
  logical :: first_iter = .true.
  real(dp), allocatable, dimension(:,:) :: tau_smart
  real(dp), allocatable, dimension(:,:) :: force_smart
  real(dp) :: etot_smart
  real(dp), allocatable, dimension(:,:) :: tau_old
  real(dp), allocatable, dimension(:,:) :: tau_new
  real(dp), allocatable, dimension(:,:) :: tau_ref
  real(dp), allocatable, dimension(:,:) :: vel
  real(dp), allocatable, dimension(:,:) :: acc
  real(dp), allocatable, dimension(:,:) :: chi
  real(dp), allocatable, dimension(:) :: mass
  real(dp), allocatable, dimension(:) :: diff_coeff
  real(dp), allocatable, dimension(:,:) :: radial_distr
  integer :: hist_len = 1000
  integer :: hist_len = 1000
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type dynamics_module_type
