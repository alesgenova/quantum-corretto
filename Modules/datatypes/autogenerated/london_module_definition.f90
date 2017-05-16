type :: london_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:) :: C6_i
  real(dp), allocatable, dimension(:) :: R_vdw
  real(dp), allocatable, dimension(: , :) :: C6_ij
  real(dp), allocatable, dimension(: , :) :: R_sum
  real(dp), allocatable, dimension(: , :) :: r
  real(dp), allocatable, dimension(:) :: dist2
  real(dp) :: scal6 = 0._dp 
  real(dp) :: lon_rcut = 0._dp 
  real(dp), dimension(nsx) :: in_C6
  real(dp), dimension(nsx) :: in_rvdw
  integer :: mxr
  real(dp) :: r_cut
  real(dp) :: beta = 20.0_dp
  real(dp) :: beta = 20.0_dp
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type london_module_type
