type :: fcp_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: vel_defined
  real(dp) :: tau
  real(dp) :: tau_old
  real(dp) :: tau_new
  real(dp) :: vel
  real(dp) :: acc
  real(dp) :: acc
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type fcp_type
