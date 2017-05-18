init_args = {"plugin_etot": {"type": "real(dp)", "dimension": null}}
type :: plugin_variables_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: plugin_etot
  real(dp) :: plugin_etot
contains
  procedure, pass :: init
  procedure, pass :: update
end type plugin_variables_type
