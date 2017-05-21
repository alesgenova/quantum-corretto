type :: read_pseudo_mod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => read_pseudo_mod_type_init
  procedure, pass :: update => read_pseudo_mod_type_update
end type read_pseudo_mod_type
