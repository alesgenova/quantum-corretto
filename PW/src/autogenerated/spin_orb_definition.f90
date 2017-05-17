type :: spin_orb_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: lspinorb
  logical :: lforcet
  logical :: starting_spin_angle
  logical :: domag
  complex(dp), dimension(2*lmaxx+1,2*lmaxx+1) :: rot_ylm
  complex(dp), allocatable, dimension(:,:,:,:,:) :: fcoef
  complex(dp), allocatable, dimension(:,:,:,:,:) :: fcoef
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type spin_orb_type
