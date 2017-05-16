type :: pw2blip_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: blipreal = 0
  integer :: ngtot
  complex(dp), allocatable, dimension(:) :: psic
  complex(dp), allocatable, dimension(:) :: cavc_flat
  integer, dimension(3) :: blipgrid
  integer, dimension(3) :: ld_bg
  integer :: bg_vol
  real(dp), allocatable, dimension(:) :: gamma
  integer :: gamma_approx = 1
  real(dp) :: pi = 3.14159265358979324d0
  integer, allocatable, dimension(:) :: map_igk_to_fft
  integer, allocatable, dimension(:) :: map_minus_igk_to_fft
  integer, allocatable, dimension(:) :: do_fft_z
  integer, allocatable, dimension(:) :: do_fft_y
  integer, dimension(3) :: nr
  integer, allocatable, dimension(:,:) :: g_int
  real(dp), dimension(3) :: rnr
  real(dp), dimension(3) :: rnr2
  real(dp), dimension(3,3) :: bg
  real(dp), dimension(6) :: lvp
  real(dp), dimension(6) :: lvp
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type pw2blip_type
