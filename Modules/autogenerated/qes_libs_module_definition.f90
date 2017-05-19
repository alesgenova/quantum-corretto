init_args = {"max_real_per_line": {"type": "integer", "dimension": null}, "attr": {"type": "character(iotk_attlenx)", "dimension": null}, "fmtstr": {"type": "character(32)", "dimension": null}}
type :: qes_libs_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: max_real_per_line = 5
  character(iotk_attlenx) :: attr
  character(32) :: fmtstr

contains
  procedure, pass :: init => qes_libs_module_type_init
  procedure, pass :: update => qes_libs_module_type_update
end type qes_libs_module_type
