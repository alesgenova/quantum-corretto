init_args = {}
type :: pseudo_types_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type pseudo_types_type
