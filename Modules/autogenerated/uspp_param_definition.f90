alloc_args = {}
init_args = {"upf": {"type": "type(pseudo_upf)", "dimension": ":"}, "nh": {"type": "integer", "dimension": ":"}, "nhm": {"type": "integer", "dimension": null}, "nbetam": {"type": "integer", "dimension": null}, "iver": {"type": "integer", "dimension": ":,:"}, "lmaxkb": {"type": "integer", "dimension": null}, "lmaxq": {"type": "integer", "dimension": null}, "newpseudo": {"type": "logical", "dimension": ":"}, "oldvan": {"type": "logical", "dimension": ":"}, "nvb": {"type": "integer", "dimension": null}, "ish": {"type": "integer", "dimension": ":"}}
type :: uspp_param_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(pseudo_upf), allocatable, dimension(:) :: upf ! dimensions = [":"]
  integer, allocatable, dimension(:) :: nh ! dimensions = [":"]
  integer :: nhm
  integer :: nbetam
  integer, allocatable, dimension(:,:) :: iver ! dimensions = [":", ":"]
  integer :: lmaxkb
  integer :: lmaxq
  logical, allocatable, dimension(:) :: newpseudo ! dimensions = [":"]
  logical, allocatable, dimension(:) :: oldvan ! dimensions = [":"]
  integer :: nvb
  integer, allocatable, dimension(:) :: ish ! dimensions = [":"]

contains
  procedure, pass :: alloc => uspp_param_type_alloc
  procedure, pass :: init => uspp_param_type_init
  procedure, pass :: update => uspp_param_type_update
  procedure, pass :: dealloc => uspp_param_type_dealloc
end type uspp_param_type
