type :: read_xml_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: alloc
  procedure, pass :: init
end type read_xml_module_type