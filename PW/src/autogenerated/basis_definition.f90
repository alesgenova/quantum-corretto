alloc_args = {}
init_args = {"natomwfc": {"type": "integer", "dimension": null}, "swfcatom": {"type": "complex(dp)", "dimension": ":,:"}, "starting_wfc": {"type": "character(len=30)", "dimension": null}, "starting_pot": {"type": "character(len=30)", "dimension": null}, "startingconfig": {"type": "character(len=30)", "dimension": null}}
type :: basis_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: natomwfc
  complex(dp), allocatable, dimension(:,:) :: swfcatom ! dimensions = [:,:]
  character(len=30) :: starting_wfc
  character(len=30) :: starting_pot
  character(len=30) :: startingconfig
  character(len=30) :: startingconfig
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type basis_type
