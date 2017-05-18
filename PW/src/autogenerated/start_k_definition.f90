alloc_args = {}
init_args = {"nk1": {"type": "integer", "dimension": null}, "nk2": {"type": "integer", "dimension": null}, "nk3": {"type": "integer", "dimension": null}, "k1": {"type": "integer", "dimension": null}, "k2": {"type": "integer", "dimension": null}, "k3": {"type": "integer", "dimension": null}, "nks_start": {"type": "integer", "dimension": null}, "wk_start": {"type": "real(dp)", "dimension": ":"}, "xk_start": {"type": "real(dp)", "dimension": ":,:"}}
type :: start_k_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nk1
  integer :: nk2
  integer :: nk3
  integer :: k1
  integer :: k2
  integer :: k3
  integer :: nks_start = 0
  real(dp), allocatable, dimension(:) :: wk_start ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: xk_start ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: xk_start ! dimensions = [":", ":"]
contains
  procedure, pass :: alloc => start_k_type_alloc
  procedure, pass :: init => start_k_type_init
  procedure, pass :: update => start_k_type_update
  procedure, pass :: dealloc => start_k_type_dealloc
end type start_k_type
