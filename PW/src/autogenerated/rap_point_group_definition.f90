init_args = {"code_group": {"type": "integer", "dimension": null}, "nclass": {"type": "integer", "dimension": null}, "nelem": {"type": "integer", "dimension": "12"}, "elem": {"type": "integer", "dimension": "8,12"}, "which_irr": {"type": "integer", "dimension": "12"}, "char_mat": {"type": "complex(dp)", "dimension": "12,12"}, "name_rap": {"type": "character(len=15)", "dimension": "12"}, "ir_ram": {"type": "character(len=3)", "dimension": "12"}, "gname": {"type": "character(len=11)", "dimension": null}, "name_class": {"type": "character(len=5)", "dimension": "12"}, "elem_name": {"type": "character(len=55)", "dimension": "8,12"}}
type :: rap_point_group_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: code_group
  integer :: nclass
  integer, dimension(12) :: nelem
  integer, dimension(8,12) :: elem
  integer, dimension(12) :: which_irr
  complex(dp), dimension(12,12) :: char_mat
  character(len=15), dimension(12) :: name_rap
  character(len=3), dimension(12) :: ir_ram
  character(len=11) :: gname
  character(len=5), dimension(12) :: name_class
  character(len=55), dimension(8,12) :: elem_name = ' '
  character(len=55), dimension(8,12) :: elem_name = ' '
contains
  procedure, pass :: init => rap_point_group_type_init
  procedure, pass :: update => rap_point_group_type_update
end type rap_point_group_type
