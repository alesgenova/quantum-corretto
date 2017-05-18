init_args = {"npool": {"type": "integer", "dimension": null}, "nproc_pool": {"type": "integer", "dimension": null}, "me_pool": {"type": "integer", "dimension": null}, "root_pool": {"type": "integer", "dimension": null}, "my_pool_id": {"type": "integer", "dimension": null}, "inter_pool_comm": {"type": "integer", "dimension": null}, "intra_pool_comm": {"type": "integer", "dimension": null}, "kunit": {"type": "integer", "dimension": null}}
type :: mp_pools_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: npool = 1
  integer :: nproc_pool = 1
  integer :: me_pool = 0
  integer :: root_pool = 0
  integer :: my_pool_id = 0
  integer :: inter_pool_comm = 0
  integer :: intra_pool_comm = 0
  integer :: kunit = 1
  integer :: kunit = 1
contains
  procedure, pass :: init
  procedure, pass :: update
end type mp_pools_type
