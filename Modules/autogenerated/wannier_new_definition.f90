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
  type(wannier_data), allocatable, dimension(:,:) :: wan_in
  type(wannier_data), allocatable, dimension(:,:) :: wan_in
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type wannier_new_type
