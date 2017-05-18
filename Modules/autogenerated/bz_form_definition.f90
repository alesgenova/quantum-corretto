init_args = {}
type :: bz_form_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => bz_form_type_init
  procedure, pass :: update => bz_form_type_update
end type bz_form_type
