init_args = {}
type :: qexsd_reader_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type qexsd_reader_module_type
