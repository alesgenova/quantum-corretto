init_args = {"etot": {"type": "real(dp)", "dimension": null}, "hwf_energy": {"type": "real(dp)", "dimension": null}, "eband": {"type": "real(dp)", "dimension": null}, "deband": {"type": "real(dp)", "dimension": null}, "ehart": {"type": "real(dp)", "dimension": null}, "etxc": {"type": "real(dp)", "dimension": null}, "vtxc": {"type": "real(dp)", "dimension": null}, "etxcc": {"type": "real(dp)", "dimension": null}, "ewld": {"type": "real(dp)", "dimension": null}, "elondon": {"type": "real(dp)", "dimension": null}, "exdm": {"type": "real(dp)", "dimension": null}, "demet": {"type": "real(dp)", "dimension": null}, "epaw": {"type": "real(dp)", "dimension": null}, "ef": {"type": "real(dp)", "dimension": null}, "ef_up": {"type": "real(dp)", "dimension": null}, "ef_dw": {"type": "real(dp)", "dimension": null}}
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
  procedure, pass :: init
  procedure, pass :: update
end type ener_type
