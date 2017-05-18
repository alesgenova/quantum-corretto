init_args = {"has_been_read": {"type": "logical", "dimension": null}}
type :: read_input_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: has_been_read = .false.
  logical :: has_been_read = .false.
contains
  procedure, pass :: init
  procedure, pass :: update
end type read_input_type
