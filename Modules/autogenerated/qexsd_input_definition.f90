type :: qexsd_input_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(input_type) :: input
  type(input_type) :: input
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type qexsd_input_type
