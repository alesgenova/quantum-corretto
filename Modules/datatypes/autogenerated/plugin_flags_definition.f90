type :: plugin_flags_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=256) :: plugin_name
  logical :: use_plumed
  logical :: use_pw2casino
  logical :: use_environ
  logical :: use_environ
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type plugin_flags_type
