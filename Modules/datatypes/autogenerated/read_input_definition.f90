type :: read_input_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: has_been_read = .false.
  logical :: has_been_read = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type read_input_type
