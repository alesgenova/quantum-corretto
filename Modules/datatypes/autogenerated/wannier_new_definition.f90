type :: wannier_new_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ningx = 10
  logical :: use_wannier
  logical :: rkmesh
  logical :: plot_wannier
  logical :: use_energy_int
  logical :: print_wannier_coeff
  integer :: nwan
  integer :: plot_wan_num
  integer :: plot_wan_spin
  real(kind=dp), allocatable, dimension(:,:) :: wan_pot
  real(kind=dp), allocatable, dimension(:,:) :: wannier_energy
  real(kind=dp), allocatable, dimension(:,:,:) :: wannier_occ
  complex(kind=dp), allocatable, dimension(:,:) :: pp
  complex(kind=dp), allocatable, dimension(:,:,:) :: coef
  integer :: l = 0
  integer :: m = 0
  integer :: iatomwfc = 0
  real :: c = 0.d0
  integer :: iatom = 0
  integer :: ning = 0
  real :: bands_from = 0.d0
  real :: bands_to = 0.d0
  type(ingredient), dimension(ningx) :: ing
  type(wannier_data), allocatable, dimension(:,:) :: wan_in
  type(wannier_data), allocatable, dimension(:,:) :: wan_in
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type wannier_new_type
