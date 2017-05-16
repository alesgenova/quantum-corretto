type :: relax_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: epse = 0.0_dp
  real(dp) :: epsf
  real(dp) :: epsp
  real(dp) :: starting_scf_threshold
  real(dp) :: starting_scf_threshold
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type relax_type
