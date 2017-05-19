init_args = {"title": {"type": "character(len=75)", "dimension": null}}
type :: run_info_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=75) :: title = ' '

contains
  procedure, pass :: init => run_info_type_init
  procedure, pass :: update => run_info_type_update
end type run_info_type
