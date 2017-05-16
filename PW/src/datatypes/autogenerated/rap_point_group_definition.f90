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
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type rap_point_group_type
