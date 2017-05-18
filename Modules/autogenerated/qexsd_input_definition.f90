init_args = {"input": {"type": "type(input_type)", "dimension": null}}
type :: qexsd_input_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(input_type) :: input
  type(input_type) :: input
contains
  procedure, pass :: init => qexsd_input_type_init
  procedure, pass :: update => qexsd_input_type_update
end type qexsd_input_type
