type :: m_gth_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: itype
  integer :: lloc
  integer :: lmax
  real(dp) :: rloc
  real(dp), dimension(4) :: cc
  integer, dimension(:), pointer :: lll
  integer, dimension(:), pointer :: ipr
  real(dp), dimension(:), pointer :: rrl
  type(gth_parameters), dimension(:), pointer :: gth_p
  type(gth_parameters), dimension(:), pointer :: gth_p
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type m_gth_type
