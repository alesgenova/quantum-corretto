alloc_args = {}
init_args = {"cft_initialized": {"type": "logical", "dimension": null}, "nfftx": {"type": "integer", "dimension": null}, "lwork": {"type": "integer", "dimension": null}, "work": {"type": "real(dp)", "dimension": ":, :"}, "ltabl": {"type": "integer", "dimension": null}, "fw_tablez": {"type": "real(dp)", "dimension": ":"}, "bw_tablez": {"type": "real(dp)", "dimension": ":"}, "tablez": {"type": "real(dp)", "dimension": ":"}, "isys": {"type": "integer", "dimension": null}}
type :: esm_cft_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: cft_initialized = .false.
  integer :: nfftx = 2049
  integer :: lwork
  real(dp), dimension(:, :) :: work
  integer :: ltabl = 2 * nfftx + 64
  real(dp), allocatable, dimension(:) :: fw_tablez ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: bw_tablez ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: tablez ! dimensions = [:]
  integer :: isys = 1
  integer :: isys = 1
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type esm_cft_type
