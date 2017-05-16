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
  integer, allocatable, dimension(:,:,:) :: egrp_pairs
  integer, allocatable, dimension(:) :: band_roots
  logical, allocatable, dimension(:,:) :: contributed_bands
  integer, allocatable, dimension(:) :: nibands
  integer, allocatable, dimension(:,:) :: ibands
  integer :: iexx_start = 0
  integer :: iexx_end = 0
  integer, allocatable, dimension(:) :: iexx_istart
  integer, allocatable, dimension(:) :: iexx_iend
  integer, allocatable, dimension(:) :: all_start
  integer, allocatable, dimension(:) :: all_end
  integer :: max_contributors
  integer :: exx_mode = 0
  integer :: max_ibands
  integer :: jblock
  integer :: jblock
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type mp_exx_type
