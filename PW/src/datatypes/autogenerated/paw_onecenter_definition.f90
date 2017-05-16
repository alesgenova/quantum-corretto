type :: paw_onecenter_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: paw_comm
  integer :: me_paw
  integer :: nproc_paw
  integer :: nx_loc
  integer :: ix_s
  integer :: ix_e
  real(dp), allocatable, dimension(:,:,:) :: msmall_lm
  real(dp), allocatable, dimension(:,:,:) :: g_lm
  logical :: with_small_so = .false.
  logical :: TIMING = .false.
  integer :: ldim_block
  integer :: gind_block
  integer :: gind_block
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type paw_onecenter_type
