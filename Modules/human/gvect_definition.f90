alloc_args = {"fft_base": {"type": "type(fft_base_type)", "dimension": null}, "ions_base": {"type": "type(ions_base_type)", "dimension": null}}
init_args = {"ngm": {"type": "integer", "dimension": null}, "ngm_g": {"type": "integer", "dimension": null}, "ngl": {"type": "integer", "dimension": null}, "ngmx": {"type": "integer", "dimension": null}, "ecutrho": {"type": "real(dp)", "dimension": null}, "gcutm": {"type": "real(dp)", "dimension": null}, "nl": {"type": "integer", "dimension": ":"}, "nlm": {"type": "integer", "dimension": ":"}, "gstart": {"type": "integer", "dimension": null}, "gg": {"type": "real(dp)", "dimension": ":"}, "gl": {"type": "real(dp)", "dimension": ":"}, "igtongl": {"type": "integer", "dimension": ":"}, "g": {"type": "real(dp)", "dimension": ":,:"}, "mill": {"type": "integer", "dimension": ":,:"}, "ig_l2g": {"type": "integer", "dimension": ":"}, "sortedig_l2g": {"type": "integer", "dimension": ":"}, "mill_g": {"type": "integer", "dimension": ":,:"}, "eigts1": {"type": "complex(dp)", "dimension": ":,:"}, "eigts2": {"type": "complex(dp)", "dimension": ":,:"}, "eigts3": {"type": "complex(dp)", "dimension": ":,:"}}
type :: gvect_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ngm = 0
  integer :: ngm_g = 0
  integer :: ngl = 0
  integer :: ngmx = 0
  real(dp) :: ecutrho = 0.0_dp
  real(dp) :: gcutm = 0.0_dp
  integer, allocatable, dimension(:) :: nl ! dimensions = ["this%ngm"]
  integer, allocatable, dimension(:) :: nlm ! dimensions = ["this%ngm"]
  integer :: gstart = 2
  real(dp), allocatable, dimension(:) :: gg ! dimensions = ["this%ngm"]
  real(dp), dimension(:), pointer :: gl
  integer, allocatable, dimension(:) :: igtongl ! dimensions = ["this%ngm"]
  real(dp), allocatable, dimension(:,:) :: g ! dimensions = ["3","this%ngm"]
  integer, allocatable, dimension(:,:) :: mill ! dimensions = ["3","this%ngm"]
  integer, allocatable, dimension(:) :: ig_l2g ! dimensions = ["this%ngm"]
  integer, allocatable, dimension(:) :: sortedig_l2g ! dimensions = ["this%ngm"]
  integer, allocatable, dimension(:,:) :: mill_g ! dimensions = ["3","this%ngm"]
  complex(dp), allocatable, dimension(:,:) :: eigts1 ! dimensions = ["-fft_base%nr1:fft_base%nr1","ions_base%nat"]
  complex(dp), allocatable, dimension(:,:) :: eigts2 ! dimensions = ["-fft_base%nr2:fft_base%nr2","ions_base%nat"]
  complex(dp), allocatable, dimension(:,:) :: eigts3 ! dimensions = ["-fft_base%nr3:fft_base%nr3","ions_base%nat"]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type gvect_type
