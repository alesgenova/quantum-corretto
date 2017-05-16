type :: extfield_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: tefield
  logical :: dipfield
  logical :: relaxz
  logical :: block
  logical :: monopole
  integer :: edir
  real(dp) :: emaxpos
  real(dp) :: eopreg
  real(dp) :: eamp
  real(dp) :: etotefield
  real(dp) :: el_dipole
  real(dp) :: ion_dipole
  real(dp) :: tot_dipole
  real(dp) :: zmon
  real(dp) :: block_1
  real(dp) :: block_2
  real(dp) :: block_height
  real(dp) :: etotmonofield
  real(dp), allocatable, dimension(:,:) :: forcefield
  real(dp), allocatable, dimension(:,:) :: forcemono
  real(dp), allocatable, dimension(:,:) :: forcemono
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type extfield_type
