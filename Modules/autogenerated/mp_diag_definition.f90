init_args = {"np_ortho": {"type": "integer", "dimension": "2"}, "me_ortho": {"type": "integer", "dimension": "2"}, "me_ortho1": {"type": "integer", "dimension": null}, "nproc_ortho": {"type": "integer", "dimension": null}, "leg_ortho": {"type": "integer", "dimension": null}, "ortho_comm": {"type": "integer", "dimension": null}, "ortho_row_comm": {"type": "integer", "dimension": null}, "ortho_col_comm": {"type": "integer", "dimension": null}, "ortho_comm_id": {"type": "integer", "dimension": null}, "ortho_parent_comm": {"type": "integer", "dimension": null}, "me_blacs": {"type": "integer", "dimension": null}, "np_blacs": {"type": "integer", "dimension": null}, "world_cntx": {"type": "integer", "dimension": null}, "ortho_cntx": {"type": "integer", "dimension": null}}
type :: mp_diag_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer, dimension(2) :: np_ortho = 1
  integer, dimension(2) :: me_ortho = 0
  integer :: me_ortho1 = 0
  integer :: nproc_ortho = 1
  integer :: leg_ortho = 1
  integer :: ortho_comm = 0
  integer :: ortho_row_comm = 0
  integer :: ortho_col_comm = 0
  integer :: ortho_comm_id = 0
  integer :: ortho_parent_comm = 0
  integer :: me_blacs = 0
  integer :: np_blacs = 1
  integer :: world_cntx = -1
  integer :: ortho_cntx = -1

contains
  procedure, pass :: init => mp_diag_type_init
  procedure, pass :: update => mp_diag_type_update
end type mp_diag_type
