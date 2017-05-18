alloc_args = {}
init_args = {"fmt_name": {"type": "character(5)", "dimension": null}, "fmt_version": {"type": "character(5)", "dimension": null}, "datadir_in": {"type": "character(256)", "dimension": null}, "datadir_out": {"type": "character(256)", "dimension": null}, "iunit": {"type": "integer", "dimension": null}, "ounit": {"type": "integer", "dimension": null}, "qexsd_current_version": {"type": "character(10)", "dimension": null}, "qexsd_default_version": {"type": "character(10)", "dimension": null}, "qexsd_current_version_init": {"type": "logical", "dimension": null}, "qexsd_use_large_indent": {"type": "logical", "dimension": null}, "attr": {"type": "character(iotk_attlenx)", "dimension": null}, "qexsd_input_obj": {"type": "type(input_type)", "dimension": null}, "general_info": {"type": "type(general_info_type)", "dimension": null}, "parallel_info": {"type": "type(parallel_info_type)", "dimension": null}, "qexsd_bp_obj": {"type": "type(berryphaseoutput_type)", "dimension": null}, "qexsd_dipol_obj": {"type": "type(dipoleoutput_type)", "dimension": null}, "steps": {"type": "type(step_type)", "dimension": ":"}, "exit_status": {"type": "type(status_type)", "dimension": null}, "qexsd_closed_element": {"type": "type(closed_type)", "dimension": null}, "step_counter": {"type": "integer", "dimension": null}}
type :: qexsd_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(5) :: fmt_name = "qexsd"
  character(5) :: fmt_version = "0.1.0"
  character(256) :: datadir_in
  character(256) :: datadir_out
  integer :: iunit
  integer :: ounit
  character(10) :: qexsd_current_version = " "
  character(10) :: qexsd_default_version = trim( fmt_version  )
  logical :: qexsd_current_version_init = .false.
  logical :: qexsd_use_large_indent = .false.
  character(iotk_attlenx) :: attr
  type(input_type) :: qexsd_input_obj
  type(general_info_type) :: general_info
  type(parallel_info_type) :: parallel_info
  type(berryphaseoutput_type) :: qexsd_bp_obj
  type(dipoleoutput_type) :: qexsd_dipol_obj
  type(step_type), allocatable, dimension(:) :: steps ! dimensions = [":"]
  type(status_type) :: exit_status
  type(closed_type) :: qexsd_closed_element
  integer :: step_counter
  integer :: step_counter
contains
  procedure, pass :: alloc => qexsd_module_type_alloc
  procedure, pass :: init => qexsd_module_type_init
  procedure, pass :: update => qexsd_module_type_update
  procedure, pass :: dealloc => qexsd_module_type_dealloc
end type qexsd_module_type
