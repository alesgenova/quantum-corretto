init_args = {"fmt_name": {"type": "character(5)", "dimension": null}, "fmt_version": {"type": "character(5)", "dimension": null}, "rho_binary": {"type": "logical", "dimension": null}, "attr": {"type": "character(iotk_attlenx)", "dimension": null}}
type :: xml_io_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(5) :: fmt_name = "qexml"
  character(5) :: fmt_version = "1.4.0"
  logical :: rho_binary = .true.
  character(iotk_attlenx) :: attr

contains
  procedure, pass :: init => xml_io_base_type_init
  procedure, pass :: update => xml_io_base_type_update
end type xml_io_base_type
