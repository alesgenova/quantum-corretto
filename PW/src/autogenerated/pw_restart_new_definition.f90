init_args = {"int_to_char": {"type": "character(len=6)", "dimension": null}}
type :: pw_restart_new_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=6) :: int_to_char

contains
  procedure, pass :: init => pw_restart_new_type_init
  procedure, pass :: update => pw_restart_new_type_update
end type pw_restart_new_type
