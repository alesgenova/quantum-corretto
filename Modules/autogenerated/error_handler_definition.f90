init_args = {"routine_chain": {"type": "type(chain)", "dimension": null}, "error_code": {"type": "integer", "dimension": null}}
type :: error_handler_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(chain), pointer :: routine_chain
  integer :: error_code

contains
  procedure, pass :: init => error_handler_type_init
  procedure, pass :: update => error_handler_type_update
end type error_handler_type
