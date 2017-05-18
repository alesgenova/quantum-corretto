alloc_args = {}
init_args = {"blipreal": {"type": "integer", "dimension": null}, "ngtot": {"type": "integer", "dimension": null}, "psic": {"type": "complex(dp)", "dimension": ":"}, "cavc_flat": {"type": "complex(dp)", "dimension": ":"}, "blipgrid": {"type": "integer", "dimension": "3"}, "ld_bg": {"type": "integer", "dimension": "3"}, "bg_vol": {"type": "integer", "dimension": null}, "gamma": {"type": "real(dp)", "dimension": ":"}, "gamma_approx": {"type": "integer", "dimension": null}, "pi": {"type": "real(dp)", "dimension": null}, "map_igk_to_fft": {"type": "integer", "dimension": ":"}, "map_minus_igk_to_fft": {"type": "integer", "dimension": ":"}, "do_fft_z": {"type": "integer", "dimension": ":"}, "do_fft_y": {"type": "integer", "dimension": ":"}, "nr": {"type": "integer", "dimension": "3"}, "g_int": {"type": "integer", "dimension": ":,:"}, "rnr": {"type": "real(dp)", "dimension": "3"}, "rnr2": {"type": "real(dp)", "dimension": "3"}, "bg": {"type": "real(dp)", "dimension": "3,3"}, "lvp": {"type": "real(dp)", "dimension": "6"}}
type :: pw2blip_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: blipreal = 0
  integer :: ngtot
  complex(dp), allocatable, dimension(:) :: psic ! dimensions = [:]
  complex(dp), allocatable, dimension(:) :: cavc_flat ! dimensions = [:]
  integer, dimension(3) :: blipgrid
  integer, dimension(3) :: ld_bg
  integer :: bg_vol
  real(dp), allocatable, dimension(:) :: gamma ! dimensions = [:]
  integer :: gamma_approx = 1
  real(dp) :: pi = 3.14159265358979324d0
  integer, allocatable, dimension(:) :: map_igk_to_fft ! dimensions = [:]
  integer, allocatable, dimension(:) :: map_minus_igk_to_fft ! dimensions = [:]
  integer, allocatable, dimension(:) :: do_fft_z ! dimensions = [:]
  integer, allocatable, dimension(:) :: do_fft_y ! dimensions = [:]
  integer, dimension(3) :: nr
  integer, allocatable, dimension(:,:) :: g_int ! dimensions = [:,:]
  real(dp), dimension(3) :: rnr
  real(dp), dimension(3) :: rnr2
  real(dp), dimension(3,3) :: bg
  real(dp), dimension(6) :: lvp
  real(dp), dimension(6) :: lvp
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type pw2blip_type
