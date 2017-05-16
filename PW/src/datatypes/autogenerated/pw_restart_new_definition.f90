type :: pw_restart_new_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=6) :: int_to_char
  character(len=6) :: int_to_char
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type pw_restart_new_type
