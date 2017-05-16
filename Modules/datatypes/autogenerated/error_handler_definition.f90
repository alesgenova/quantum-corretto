type :: error_handler_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=35) :: routine_name
  type(chain), pointer :: previous_link
  type(chain), pointer :: routine_chain
  integer :: error_code
  integer :: error_code
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type error_handler_type
