alloc_args = {}
init_args = {"tefield": {"type": "logical", "dimension": null}, "dipfield": {"type": "logical", "dimension": null}, "edir": {"type": "integer", "dimension": null}, "emaxpos": {"type": "real(dp)", "dimension": null}, "eopreg": {"type": "real(dp)", "dimension": null}, "eamp": {"type": "real(dp)", "dimension": null}, "etotefield": {"type": "real(dp)", "dimension": null}, "forcefield": {"type": "real(dp)", "dimension": ":,:"}}
type :: extfield_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: tefield
  logical :: dipfield
  integer :: edir
  real(dp) :: emaxpos
  real(dp) :: eopreg
  real(dp) :: eamp
  real(dp) :: etotefield
  real(dp), allocatable, dimension(:,:) :: forcefield ! dimensions = [":", ":"]

contains
  procedure, pass :: alloc => extfield_type_alloc
  procedure, pass :: init => extfield_type_init
  procedure, pass :: update => extfield_type_update
  procedure, pass :: dealloc => extfield_type_dealloc
end type extfield_type
