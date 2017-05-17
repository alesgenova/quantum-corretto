type :: xml_io_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(iotk_attlenx) :: attr
  logical :: rho_binary = .true.
  logical :: rho_binary = .true.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type xml_io_base_type
