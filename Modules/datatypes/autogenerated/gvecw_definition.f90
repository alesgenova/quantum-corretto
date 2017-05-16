type :: gvecw_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ngw = 0
  integer :: ngw_g = 0
  integer :: ngwx = 0
  real(dp) :: ecutwfc = 0.0_dp
  real(dp) :: gcutw = 0.0_dp
  real(dp) :: ecfixed = 0.0_dp
  real(dp) :: qcutz = 0.0_dp
  real(dp) :: q2sigma = 0.0_dp
  real(dp) :: ekcut = 0.0_dp
  real(dp) :: gkcut = 0.0_dp
  real(dp), allocatable, dimension(:) :: g2kin
  real(dp), allocatable, dimension(:) :: g2kin
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type gvecw_type
