init_args = {"plugin_etot": {"type": "real(dp)", "dimension": null}}
type :: plugin_variables_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: plugin_etot
  real(dp) :: plugin_etot
contains
  procedure, pass :: init => plugin_variables_type_init
  procedure, pass :: update => plugin_variables_type_update
end type plugin_variables_type
