alloc_args = {}
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
  integer, allocatable, dimension(:) :: nl ! dimensions = [:]
  integer, allocatable, dimension(:) :: nlm ! dimensions = [:]
  integer :: gstart = 2
  real(dp), allocatable, dimension(:) :: gg ! dimensions = [:]
  real(dp), dimension(:), pointer :: gl
  integer, allocatable, dimension(:) :: igtongl ! dimensions = [:]
  real(dp), allocatable, dimension(:,:) :: g ! dimensions = [:,:]
  integer, allocatable, dimension(:,:) :: mill ! dimensions = [:,:]
  integer, allocatable, dimension(:) :: ig_l2g ! dimensions = [:]
  integer, allocatable, dimension(:) :: sortedig_l2g ! dimensions = [:]
  integer, allocatable, dimension(:,:) :: mill_g ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:,:) :: eigts1 ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:,:) :: eigts2 ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:,:) :: eigts3 ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:,:) :: eigts3 ! dimensions = [:,:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type gvect_type
