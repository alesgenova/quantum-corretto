type :: mp_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => mp_type_init
  procedure, pass :: update => mp_type_update
end type mp_type
