init_args = {"attr": {"type": "character(iotk_attlenx)", "dimension": null}}
type :: io_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(iotk_attlenx) :: attr

contains
  procedure, pass :: init => io_base_type_init
  procedure, pass :: update => io_base_type_update
end type io_base_type
