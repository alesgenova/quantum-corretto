type :: command_line_options_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nargs = 0
  integer :: nimage_ = 1
  integer :: npool_ = 1
  integer :: ndiag_ = 0
  integer :: nband_ = 1
  integer :: ntg_ = 1
  logical :: library_init = .false.
  character(len=256) :: input_file_ = ' '
  character(len=512) :: command_line = ' '
  character(len=512) :: command_line = ' '
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type command_line_options_type
