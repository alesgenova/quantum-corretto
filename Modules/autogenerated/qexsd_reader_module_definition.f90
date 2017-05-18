init_args = {}
type :: qexsd_reader_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => qexsd_reader_module_type_init
  procedure, pass :: update => qexsd_reader_module_type_update
end type qexsd_reader_module_type
