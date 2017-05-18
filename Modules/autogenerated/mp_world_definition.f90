init_args = {"nproc": {"type": "integer", "dimension": null}, "mpime": {"type": "integer", "dimension": null}, "root": {"type": "integer", "dimension": null}, "world_comm": {"type": "integer", "dimension": null}, "library_mode": {"type": "logical", "dimension": null}}
type :: mp_world_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nproc = 1
  integer :: mpime = 0
  integer :: root = 0
  integer :: world_comm = 0
  logical :: library_mode = .false.
  logical :: library_mode = .false.
contains
  procedure, pass :: init => mp_world_type_init
  procedure, pass :: update => mp_world_type_update
end type mp_world_type
