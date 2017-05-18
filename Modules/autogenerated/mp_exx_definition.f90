alloc_args = {}
init_args = {"negrp": {"type": "integer", "dimension": null}, "nproc_egrp": {"type": "integer", "dimension": null}, "me_egrp": {"type": "integer", "dimension": null}, "root_egrp": {"type": "integer", "dimension": null}, "my_egrp_id": {"type": "integer", "dimension": null}, "inter_egrp_comm": {"type": "integer", "dimension": null}, "intra_egrp_comm": {"type": "integer", "dimension": null}, "ntask_groups": {"type": "integer", "dimension": null}, "use_old_exx": {"type": "logical", "dimension": null}, "max_pairs": {"type": "integer", "dimension": null}, "egrp_pairs": {"type": "integer", "dimension": ":,:,:"}, "band_roots": {"type": "integer", "dimension": ":"}, "contributed_bands": {"type": "logical", "dimension": ":,:"}, "nibands": {"type": "integer", "dimension": ":"}, "ibands": {"type": "integer", "dimension": ":,:"}, "iexx_start": {"type": "integer", "dimension": null}, "iexx_end": {"type": "integer", "dimension": null}, "iexx_istart": {"type": "integer", "dimension": ":"}, "iexx_iend": {"type": "integer", "dimension": ":"}, "all_start": {"type": "integer", "dimension": ":"}, "all_end": {"type": "integer", "dimension": ":"}, "max_contributors": {"type": "integer", "dimension": null}, "exx_mode": {"type": "integer", "dimension": null}, "max_ibands": {"type": "integer", "dimension": null}, "jblock": {"type": "integer", "dimension": null}}
type :: mp_exx_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: negrp = 1
  integer :: nproc_egrp = 1
  integer :: me_egrp = 0
  integer :: root_egrp = 0
  integer :: my_egrp_id = 0
  integer :: inter_egrp_comm = 0
  integer :: intra_egrp_comm = 0
  integer :: ntask_groups = 1
  logical :: use_old_exx = .false.
  integer :: max_pairs
  integer, allocatable, dimension(:,:,:) :: egrp_pairs ! dimensions = [":", ":", ":"]
  integer, allocatable, dimension(:) :: band_roots ! dimensions = [":"]
  logical, allocatable, dimension(:,:) :: contributed_bands ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: nibands ! dimensions = [":"]
  integer, allocatable, dimension(:,:) :: ibands ! dimensions = [":", ":"]
  integer :: iexx_start = 0
  integer :: iexx_end = 0
  integer, allocatable, dimension(:) :: iexx_istart ! dimensions = [":"]
  integer, allocatable, dimension(:) :: iexx_iend ! dimensions = [":"]
  integer, allocatable, dimension(:) :: all_start ! dimensions = [":"]
  integer, allocatable, dimension(:) :: all_end ! dimensions = [":"]
  integer :: max_contributors
  integer :: exx_mode = 0
  integer :: max_ibands
  integer :: jblock
  integer :: jblock
contains
  procedure, pass :: alloc => mp_exx_type_alloc
  procedure, pass :: init => mp_exx_type_init
  procedure, pass :: update => mp_exx_type_update
  procedure, pass :: dealloc => mp_exx_type_dealloc
end type mp_exx_type
