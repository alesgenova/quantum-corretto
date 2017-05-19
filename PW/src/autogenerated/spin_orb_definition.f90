alloc_args = {}
init_args = {"lspinorb": {"type": "logical", "dimension": null}, "lforcet": {"type": "logical", "dimension": null}, "starting_spin_angle": {"type": "logical", "dimension": null}, "domag": {"type": "logical", "dimension": null}, "rot_ylm": {"type": "complex(dp)", "dimension": ":,:,:,:"}, "fcoef": {"type": "complex(dp)", "dimension": ":,:,:,:,:"}}
type :: spin_orb_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: lspinorb
  logical :: lforcet
  logical :: starting_spin_angle
  logical :: domag
  complex(dp), allocatable, dimension(:,:,:,:) :: rot_ylm ! dimensions = [":", ":", ":", ":"]
  complex(dp), allocatable, dimension(:,:,:,:,:) :: fcoef ! dimensions = [":", ":", ":", ":", ":"]

contains
  procedure, pass :: alloc => spin_orb_type_alloc
  procedure, pass :: init => spin_orb_type_init
  procedure, pass :: update => spin_orb_type_update
  procedure, pass :: dealloc => spin_orb_type_dealloc
end type spin_orb_type
