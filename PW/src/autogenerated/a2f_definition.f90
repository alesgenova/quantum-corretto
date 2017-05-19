init_args = {"la2F": {"type": "logical", "dimension": null}}
type :: a2f_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: la2F = .false.

contains
  procedure, pass :: init => a2f_type_init
  procedure, pass :: update => a2f_type_update
end type a2f_type
