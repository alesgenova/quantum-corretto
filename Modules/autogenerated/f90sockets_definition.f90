init_args = {}
type :: f90sockets_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => f90sockets_type_init
  procedure, pass :: update => f90sockets_type_update
end type f90sockets_type
