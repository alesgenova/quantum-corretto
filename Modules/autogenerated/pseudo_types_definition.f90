init_args = {}
type :: pseudo_types_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => pseudo_types_type_init
  procedure, pass :: update => pseudo_types_type_update
end type pseudo_types_type
