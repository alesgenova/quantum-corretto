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
  integer :: lmax
  integer :: ladd
  integer :: lm_max
  integer :: nx
  real(dp), dimension(:), pointer :: ww
  real(dp), dimension(:,:), pointer :: ylm
  real(dp), dimension(:,:), pointer :: wwylm
  real(dp), dimension(:,:), pointer :: dylmt
  real(dp), dimension(:,:), pointer :: dylmp
  real(dp), dimension(:), pointer :: cos_phi
  real(dp), dimension(:), pointer :: sin_phi
  real(dp), dimension(:), pointer :: cos_th
  real(dp), dimension(:), pointer :: sin_th
  real(dp), dimension(:), pointer :: cotg_th
  type(paw_radial_integrator), allocatable, dimension(:) :: rad
  integer :: a
  integer :: t
  integer :: m
  integer :: b
  integer :: l
  integer :: ae
  real(dp), allocatable, dimension(:,:,:) :: ddd_paw
  real(dp), allocatable, dimension(:,:,:) :: vs_rad
  real(dp), allocatable, dimension(:,:,:) :: vs_rad
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type paw_variables_type
