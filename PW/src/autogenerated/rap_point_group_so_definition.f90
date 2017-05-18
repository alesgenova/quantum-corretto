init_args = {"nrap": {"type": "integer", "dimension": null}, "nelem_so": {"type": "integer", "dimension": "24"}, "elem_so": {"type": "integer", "dimension": "12,24"}, "has_e": {"type": "integer", "dimension": "12,24"}, "which_irr_so": {"type": "integer", "dimension": "24"}, "char_mat_so": {"type": "complex(dp)", "dimension": "12,24"}, "d_spin": {"type": "complex(dp)", "dimension": "2,2,48"}, "name_rap_so": {"type": "character(len=15)", "dimension": "12"}, "name_class_so": {"type": "character(len=5)", "dimension": "24"}, "name_class_so1": {"type": "character(len=5)", "dimension": "24"}, "elem_name_so": {"type": "character(len=55)", "dimension": "12,24"}}
type :: rap_point_group_so_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nrap
  integer, dimension(24) :: nelem_so
  integer, dimension(12,24) :: elem_so
  integer, dimension(12,24) :: has_e
  integer, dimension(24) :: which_irr_so
  complex(dp), dimension(12,24) :: char_mat_so
  complex(dp), dimension(2,2,48) :: d_spin
  character(len=15), dimension(12) :: name_rap_so
  character(len=5), dimension(24) :: name_class_so
  character(len=5), dimension(24) :: name_class_so1
  character(len=55), dimension(12,24) :: elem_name_so = ' '
  character(len=55), dimension(12,24) :: elem_name_so = ' '
contains
  procedure, pass :: init
  procedure, pass :: update
end type rap_point_group_so_type
