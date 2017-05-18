init_args = {}
type :: io_rho_xml_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => io_rho_xml_type_init
  procedure, pass :: update => io_rho_xml_type_update
end type io_rho_xml_type
