alloc_args = {}
init_args = {"force": {"type": "real(dp)", "dimension": ":,:"}, "sumfor": {"type": "real(dp)", "dimension": null}, "sigma": {"type": "real(dp)", "dimension": "3,3"}, "lforce": {"type": "logical", "dimension": null}, "lstres": {"type": "logical", "dimension": null}}
type :: force_mod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:,:) :: force ! dimensions = [:,:]
  real(dp) :: sumfor
  real(dp), dimension(3,3) :: sigma
  logical :: lforce
  logical :: lstres
  logical :: lstres
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type force_mod_type
