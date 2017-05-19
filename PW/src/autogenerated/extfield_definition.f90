alloc_args = {}
init_args = {"tefield": {"type": "logical", "dimension": null}, "dipfield": {"type": "logical", "dimension": null}, "relaxz": {"type": "logical", "dimension": null}, "block": {"type": "logical", "dimension": null}, "monopole": {"type": "logical", "dimension": null}, "edir": {"type": "integer", "dimension": null}, "emaxpos": {"type": "real(dp)", "dimension": null}, "eopreg": {"type": "real(dp)", "dimension": null}, "eamp": {"type": "real(dp)", "dimension": null}, "etotefield": {"type": "real(dp)", "dimension": null}, "el_dipole": {"type": "real(dp)", "dimension": null}, "ion_dipole": {"type": "real(dp)", "dimension": null}, "tot_dipole": {"type": "real(dp)", "dimension": null}, "zmon": {"type": "real(dp)", "dimension": null}, "block_1": {"type": "real(dp)", "dimension": null}, "block_2": {"type": "real(dp)", "dimension": null}, "block_height": {"type": "real(dp)", "dimension": null}, "etotmonofield": {"type": "real(dp)", "dimension": null}, "forcefield": {"type": "real(dp)", "dimension": ":,:"}, "forcemono": {"type": "real(dp)", "dimension": ":,:"}}
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
  real(dp), allocatable, dimension(:,:) :: forcefield ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: forcemono ! dimensions = [":", ":"]

contains
  procedure, pass :: alloc => extfield_type_alloc
  procedure, pass :: init => extfield_type_init
  procedure, pass :: update => extfield_type_update
  procedure, pass :: dealloc => extfield_type_dealloc
end type extfield_type
