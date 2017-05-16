type :: plugin_variables_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: plugin_etot
  real(dp) :: plugin_etot
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type plugin_variables_type
