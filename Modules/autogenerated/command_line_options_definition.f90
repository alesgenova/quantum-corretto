init_args = {"nargs": {"type": "integer", "dimension": null}, "nimage_": {"type": "integer", "dimension": null}, "npool_": {"type": "integer", "dimension": null}, "npot_": {"type": "integer", "dimension": null}, "ndiag_": {"type": "integer", "dimension": null}, "nband_": {"type": "integer", "dimension": null}, "ntg_": {"type": "integer", "dimension": null}, "library_init": {"type": "logical", "dimension": null}, "input_file_": {"type": "character(len=256)", "dimension": null}, "command_line": {"type": "character(len=512)", "dimension": null}}
type :: command_line_options_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nargs = 0
  integer :: nimage_ = 1
  integer :: npool_ = 1
  integer :: npot_ = 1
  integer :: ndiag_ = 0
  integer :: nband_ = 1
  integer :: ntg_ = 1
  logical :: library_init = .false.
  character(len=256) :: input_file_ = ' '
  character(len=512) :: command_line = ' '

contains
  procedure, pass :: init => command_line_options_type_init
  procedure, pass :: update => command_line_options_type_update
end type command_line_options_type
