type :: generate_function_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => generate_function_type_init
  procedure, pass :: update => generate_function_type_update
end type generate_function_type
