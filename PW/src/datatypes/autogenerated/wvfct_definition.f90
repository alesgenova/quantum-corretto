type :: wvfct_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: npwx
  integer :: nbndx
  integer :: nbnd
  integer :: npw
  integer :: current_k
  real(dp), allocatable, dimension(:,:) :: et
  real(dp), allocatable, dimension(:,:) :: wg
  real(dp), allocatable, dimension(:) :: g2kin
  integer, allocatable, dimension(:,:) :: btype
  integer, allocatable, dimension(:,:) :: btype
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type wvfct_type
