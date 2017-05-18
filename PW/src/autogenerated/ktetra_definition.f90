alloc_args = {}
init_args = {"tetra_type": {"type": "integer", "dimension": null}, "ntetra": {"type": "integer", "dimension": null}, "nntetra": {"type": "integer", "dimension": null}, "tetra": {"type": "integer", "dimension": ":,:"}, "wlsm": {"type": "real(dp)", "dimension": ":,:"}}
type :: ktetra_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: tetra_type = 0
  integer :: ntetra
  integer :: nntetra
  integer, allocatable, dimension(:,:) :: tetra ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: wlsm ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: wlsm ! dimensions = [":", ":"]
contains
  procedure, pass :: alloc => ktetra_type_alloc
  procedure, pass :: init => ktetra_type_init
  procedure, pass :: update => ktetra_type_update
  procedure, pass :: dealloc => ktetra_type_dealloc
end type ktetra_type
