init_args = {"attr": {"type": "character(iotk_attlenx)", "dimension": null}}
type :: io_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(iotk_attlenx) :: attr
  character(iotk_attlenx) :: attr
contains
  procedure, pass :: init
  procedure, pass :: update
end type io_base_type
