type :: error_handler_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(chain), pointer :: routine_chain
  integer :: error_code
  integer :: error_code
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type error_handler_type
