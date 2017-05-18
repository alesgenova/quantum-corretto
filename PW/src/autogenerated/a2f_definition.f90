init_args = {"la2F": {"type": "logical", "dimension": null}}
type :: a2f_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: la2F = .false.
  logical :: la2F = .false.
contains
  procedure, pass :: init
  procedure, pass :: update
end type a2f_type
