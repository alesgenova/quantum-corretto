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
  integer :: ortho_cntx = -1
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type mp_diag_type
