init_args = {"lxmlinput_loc": {"type": "logical", "dimension": null}, "input_file": {"type": "character(len=256)", "dimension": null}}
type :: open_close_input_file_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: lxmlinput_loc = .false.
  character(len=256) :: input_file = ' '
  character(len=256) :: input_file = ' '
contains
  procedure, pass :: init => open_close_input_file_type_init
  procedure, pass :: update => open_close_input_file_type_update
end type open_close_input_file_type
