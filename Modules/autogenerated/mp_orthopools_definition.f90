init_args = {"northopool": {"type": "integer", "dimension": null}, "nproc_orthopool": {"type": "integer", "dimension": null}, "me_orthopool": {"type": "integer", "dimension": null}, "root_orthopool": {"type": "integer", "dimension": null}, "my_orthopool_id": {"type": "integer", "dimension": null}, "inter_orthopool_comm": {"type": "integer", "dimension": null}, "intra_orthopool_comm": {"type": "integer", "dimension": null}, "init_orthopools": {"type": "logical", "dimension": null}}
type :: mp_orthopools_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: northopool = 1
  integer :: nproc_orthopool = 1
  integer :: me_orthopool = 0
  integer :: root_orthopool = 0
  integer :: my_orthopool_id = 0
  integer :: inter_orthopool_comm = 0
  integer :: intra_orthopool_comm = 0
  logical :: init_orthopools = .false.
  logical :: init_orthopools = .false.
contains
  procedure, pass :: init
  procedure, pass :: update
end type mp_orthopools_type
