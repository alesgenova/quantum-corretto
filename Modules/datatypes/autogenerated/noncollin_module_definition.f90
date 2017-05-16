type :: noncollin_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: npol
  integer :: report
  integer :: nspin_lsda = 1
  integer :: nspin_mag = 1
  integer :: nspin_gga = 1
  integer :: i_cons = 0
  integer, allocatable, dimension(:) :: pointlist
  logical :: noncolin
  logical :: lsign = .false.
  real(dp), dimension(ntypx) :: angle1
  real(dp), dimension(ntypx) :: angle2
  real(dp), dimension(3,ntypx) :: mcons = 0.d0
  real(dp), dimension(3) :: magtot_nc
  real(dp), dimension(3) :: bfield = 0.d0
  real(dp) :: vtcon
  real(dp), dimension(ntypx) :: r_m = 0.0d0
  real(dp) :: lambda
  real(dp), allocatable, dimension(:) :: factlist
  real(dp), allocatable, dimension(:) :: r_loc
  real(dp), allocatable, dimension(:,:) :: m_loc
  real(dp), dimension(3) :: ux
  real(dp), dimension(3) :: ux
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type noncollin_module_type
