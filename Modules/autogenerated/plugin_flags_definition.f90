init_args = {"plugin_name": {"type": "character(len=256)", "dimension": null}, "use_plumed": {"type": "logical", "dimension": null}, "use_pw2casino": {"type": "logical", "dimension": null}, "use_environ": {"type": "logical", "dimension": null}}
type :: plugin_flags_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=256) :: plugin_name
  logical :: use_plumed
  logical :: use_pw2casino
  logical :: use_environ
  logical :: use_environ
contains
  procedure, pass :: init
  procedure, pass :: update
end type plugin_flags_type
