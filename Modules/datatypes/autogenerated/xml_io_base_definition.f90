type :: xml_io_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(5) :: fmt_name = "qexml"
  character(5) :: fmt_version = "1.4.0"
  logical :: rho_binary = .true.
  character(iotk_attlenx) :: attr
  character(iotk_attlenx) :: attr
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type xml_io_base_type
