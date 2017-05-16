type :: rap_point_group_is_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer, dimension(3,48) :: ftau_is
  integer :: nsym_is
  integer :: code_group_is
  real(dp), dimension(3,3,48) :: sr_is
  complex(dp), dimension(2,2,48) :: d_spin_is
  character(len=45), dimension(48) :: sname_is
  character(len=11) :: gname_is
  character(len=11) :: gname_is
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type rap_point_group_is_type
