type :: xml_input_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => xml_input_type_init
  procedure, pass :: update => xml_input_type_update
end type xml_input_type
