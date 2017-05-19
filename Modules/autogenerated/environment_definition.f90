init_args = {"title": {"type": "character(len=75)", "dimension": null}}
type :: environment_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=75) :: title

contains
  procedure, pass :: init => environment_type_init
  procedure, pass :: update => environment_type_update
end type environment_type
