alloc_args = {}
init_args = {"nspinx": {"type": "integer", "dimension": null}, "wfcU": {"type": "complex(dp)", "dimension": ":,:"}, "d_spin_ldau": {"type": "complex(dp)", "dimension": ":,:,:"}, "eth": {"type": "real(dp)", "dimension": null}, "Hubbard_U": {"type": "real(dp)", "dimension": ":"}, "Hubbard_J0": {"type": "real(dp)", "dimension": ":"}, "Hubbard_J": {"type": "real(dp)", "dimension": ":,:"}, "Hubbard_alpha": {"type": "real(dp)", "dimension": ":"}, "Hubbard_beta": {"type": "real(dp)", "dimension": ":"}, "starting_ns": {"type": "real(dp)", "dimension": ":,:,:"}, "nwfcU": {"type": "integer", "dimension": null}, "niter_with_fixed_ns": {"type": "integer", "dimension": null}, "lda_plus_u_kind": {"type": "integer", "dimension": null}, "Hubbard_l": {"type": "integer", "dimension": ":"}, "Hubbard_lmax": {"type": "integer", "dimension": null}, "is_hubbard": {"type": "logical", "dimension": ":"}, "lda_plus_u": {"type": "logical", "dimension": null}, "conv_ns": {"type": "logical", "dimension": null}, "U_projection": {"type": "character(len=30)", "dimension": null}, "oatwfc": {"type": "integer", "dimension": ":"}, "offsetU": {"type": "integer", "dimension": ":"}, "q_ae": {"type": "real(dp)", "dimension": ":,:,:"}, "q_ps": {"type": "real(dp)", "dimension": ":,:,:"}}
type :: ldau_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nspinx = 2
  complex(dp), allocatable, dimension(:,:) :: wfcU ! dimensions = [":", ":"]
  complex(dp), allocatable, dimension(:,:,:) :: d_spin_ldau ! dimensions = [":", ":", ":"]
  real(dp) :: eth
  real(dp), allocatable, dimension(:) :: Hubbard_U ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: Hubbard_J0 ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: Hubbard_J ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:) :: Hubbard_alpha ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: Hubbard_beta ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:,:) :: starting_ns ! dimensions = [":", ":", ":"]
  integer :: nwfcU
  integer :: niter_with_fixed_ns
  integer :: lda_plus_u_kind
  integer, allocatable, dimension(:) :: Hubbard_l ! dimensions = [":"]
  integer :: Hubbard_lmax = 0
  logical, allocatable, dimension(:) :: is_hubbard ! dimensions = [":"]
  logical :: lda_plus_u
  logical :: conv_ns
  character(len=30) :: U_projection
  integer, allocatable, dimension(:) :: oatwfc ! dimensions = [":"]
  integer, allocatable, dimension(:) :: offsetU ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:,:) :: q_ae ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: q_ps ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: q_ps ! dimensions = [":", ":", ":"]
contains
  procedure, pass :: alloc => ldau_type_alloc
  procedure, pass :: init => ldau_type_init
  procedure, pass :: update => ldau_type_update
  procedure, pass :: dealloc => ldau_type_dealloc
end type ldau_type
