type :: io_rho_xml_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type io_rho_xml_type
