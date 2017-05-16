type :: qes_libs_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: max_real_per_line = 5
  character(iotk_attlenx) :: attr
  character(32) :: fmtstr
  character(32) :: fmtstr
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type qes_libs_module_type
