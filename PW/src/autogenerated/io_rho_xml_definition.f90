init_args = {}
type :: io_rho_xml_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type io_rho_xml_type
