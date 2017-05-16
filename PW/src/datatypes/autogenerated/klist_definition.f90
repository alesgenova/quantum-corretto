type :: klist_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=32) :: smearing
  real(dp), dimension(3,npk) :: xk
  real(dp), dimension(npk) :: wk
  real(dp), dimension(3) :: xqq
  real(dp) :: degauss
  real(dp) :: nelec
  real(dp) :: nelup = 0.0_dp
  real(dp) :: neldw = 0.0_dp
  real(dp) :: tot_magnetization
  real(dp) :: tot_charge
  real(dp) :: qnorm = 0.0_dp
  integer, allocatable, dimension(:,:) :: igk_k
  integer, allocatable, dimension(:) :: ngk
  integer :: nks
  integer :: nkstot
  integer :: ngauss
  logical :: lgauss
  logical :: ltetra
  logical :: lxkcry = .false.
  logical :: two_fermi_energies
  logical :: two_fermi_energies
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type klist_type
