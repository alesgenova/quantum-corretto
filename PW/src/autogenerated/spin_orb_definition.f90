alloc_args = {}
init_args = {"lspinorb": {"type": "logical", "dimension": null}, "lforcet": {"type": "logical", "dimension": null}, "starting_spin_angle": {"type": "logical", "dimension": null}, "domag": {"type": "logical", "dimension": null}, "rot_ylm": {"type": "complex(dp)", "dimension": ":,:,:,:"}, "fcoef": {"type": "complex(dp)", "dimension": ":,:,:,:,:"}}
type :: spin_orb_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: lspinorb
  logical :: lforcet
  logical :: starting_spin_angle
  logical :: domag
  complex(dp), allocatable, dimension(:,:,:,:) :: rot_ylm ! dimensions = [:,:,:,:]
  complex(dp), allocatable, dimension(:,:,:,:,:) :: fcoef ! dimensions = [:,:,:,:,:]
  complex(dp), allocatable, dimension(:,:,:,:,:) :: fcoef ! dimensions = [:,:,:,:,:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type spin_orb_type
