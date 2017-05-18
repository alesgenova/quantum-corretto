init_args = {}
type :: read_xml_cards_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => read_xml_cards_module_type_init
  procedure, pass :: update => read_xml_cards_module_type_update
end type read_xml_cards_module_type
