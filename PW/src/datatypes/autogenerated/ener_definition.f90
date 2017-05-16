type :: ener_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: etot
  real(dp) :: hwf_energy
  real(dp) :: eband
  real(dp) :: deband
  real(dp) :: ehart
  real(dp) :: etxc
  real(dp) :: vtxc
  real(dp) :: etxcc
  real(dp) :: ewld
  real(dp) :: elondon
  real(dp) :: exdm
  real(dp) :: demet
  real(dp) :: epaw
  real(dp) :: ef
  real(dp) :: ef_up
  real(dp) :: ef_dw
  real(dp) :: ef_dw
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type ener_type
