type :: io_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(iotk_attlenx) :: attr
  character(iotk_attlenx) :: attr
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type io_base_type
