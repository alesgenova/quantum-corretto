type :: m_gth_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(gth_parameters), dimension(:), pointer :: gth_p
  type(gth_parameters), dimension(:), pointer :: gth_p
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type m_gth_type
