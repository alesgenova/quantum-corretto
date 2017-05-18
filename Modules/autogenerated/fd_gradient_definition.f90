init_args = {}
type :: fd_gradient_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => fd_gradient_type_init
  procedure, pass :: update => fd_gradient_type_update
end type fd_gradient_type
