init_args = {}
type :: fd_gradient_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type fd_gradient_type
