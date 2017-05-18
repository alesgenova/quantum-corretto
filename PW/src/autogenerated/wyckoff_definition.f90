alloc_args = {}
init_args = {"nattot": {"type": "integer", "dimension": null}, "tautot": {"type": "real(dp)", "dimension": ":,:"}, "extfortot": {"type": "real(dp)", "dimension": ":,:"}, "ityptot": {"type": "integer", "dimension": ":"}, "if_postot": {"type": "integer", "dimension": ":,:"}}
type :: wyckoff_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nattot
  real(dp), allocatable, dimension(:,:) :: tautot ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: extfortot ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: ityptot ! dimensions = [":"]
  integer, allocatable, dimension(:,:) :: if_postot ! dimensions = [":", ":"]
  integer, allocatable, dimension(:,:) :: if_postot ! dimensions = [":", ":"]
contains
  procedure, pass :: alloc => wyckoff_type_alloc
  procedure, pass :: init => wyckoff_type_init
  procedure, pass :: update => wyckoff_type_update
  procedure, pass :: dealloc => wyckoff_type_dealloc
end type wyckoff_type
