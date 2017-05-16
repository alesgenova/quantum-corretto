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
  type(step_type), allocatable, dimension(:) :: steps
  type(status_type) :: exit_status
  type(closed_type) :: qexsd_closed_element
  integer :: step_counter
  integer :: step_counter
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type qexsd_module_type
