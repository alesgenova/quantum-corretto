type :: paw_variables_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: paw_is_init = .false.
  logical :: okpaw = .false.
  real(dp) :: total_core_energy = 0._dp
  logical :: only_paw
  integer :: lm_fact = 3
  integer :: lm_fact_x = 3
  integer :: xlm = 2
  integer :: radial_grad_style = 0
  type(paw_radial_integrator), allocatable, dimension(:) :: rad
  real(dp), allocatable, dimension(:,:,:) :: ddd_paw
  real(dp), allocatable, dimension(:,:,:) :: vs_rad
  real(dp), allocatable, dimension(:,:,:) :: vs_rad
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type paw_variables_type
