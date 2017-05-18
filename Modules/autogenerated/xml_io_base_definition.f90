init_args = {"attr": {"type": "character(iotk_attlenx)", "dimension": null}, "rho_binary": {"type": "logical", "dimension": null}}
type :: xml_io_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(iotk_attlenx) :: attr
  logical :: rho_binary = .true.
  logical :: rho_binary = .true.
contains
  procedure, pass :: init
  procedure, pass :: update
end type xml_io_base_type
