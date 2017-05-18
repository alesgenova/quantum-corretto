init_args = {"gth_p": {"type": "type(gth_parameters)", "dimension": ":"}}
type :: m_gth_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(gth_parameters), dimension(:), pointer :: gth_p
  type(gth_parameters), dimension(:), pointer :: gth_p
contains
  procedure, pass :: init
  procedure, pass :: update
end type m_gth_type
