alloc_args = {}
init_args = {"paw_comm": {"type": "integer", "dimension": null}, "me_paw": {"type": "integer", "dimension": null}, "nproc_paw": {"type": "integer", "dimension": null}, "nx_loc": {"type": "integer", "dimension": null}, "ix_s": {"type": "integer", "dimension": null}, "ix_e": {"type": "integer", "dimension": null}, "msmall_lm": {"type": "real(dp)", "dimension": ":,:,:"}, "g_lm": {"type": "real(dp)", "dimension": ":,:,:"}, "with_small_so": {"type": "logical", "dimension": null}, "TIMING": {"type": "logical", "dimension": null}, "ldim_block": {"type": "integer", "dimension": null}, "gind_block": {"type": "integer", "dimension": null}}
type :: paw_onecenter_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: paw_comm
  integer :: me_paw
  integer :: nproc_paw
  integer :: nx_loc
  integer :: ix_s
  integer :: ix_e
  real(dp), allocatable, dimension(:,:,:) :: msmall_lm ! dimensions = [:,:,:]
  real(dp), allocatable, dimension(:,:,:) :: g_lm ! dimensions = [:,:,:]
  logical :: with_small_so = .false.
  logical :: TIMING = .false.
  integer :: ldim_block
  integer :: gind_block
  integer :: gind_block
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type paw_onecenter_type
