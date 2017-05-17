type :: open_close_input_file_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: lxmlinput_loc = .false.
  character(len=256) :: input_file = ' '
  character(len=256) :: input_file = ' '
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type open_close_input_file_type
