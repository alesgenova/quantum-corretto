alloc_args = {}
init_args = {"ntetra": {"type": "integer", "dimension": null}, "tetra": {"type": "integer", "dimension": ":,:"}, "ltetra": {"type": "logical", "dimension": null}}
type :: ktetra_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ntetra
  integer, allocatable, dimension(:,:) :: tetra ! dimensions = [":", ":"]
  logical :: ltetra

contains
  procedure, pass :: alloc => ktetra_type_alloc
  procedure, pass :: init => ktetra_type_init
  procedure, pass :: update => ktetra_type_update
  procedure, pass :: dealloc => ktetra_type_dealloc
end type ktetra_type
