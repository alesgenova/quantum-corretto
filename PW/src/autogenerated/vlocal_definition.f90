alloc_args = {}
init_args = {"strf": {"type": "complex(dp)", "dimension": ":,:"}, "vloc": {"type": "real(dp)", "dimension": ":,:"}}
type :: vlocal_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  complex(dp), allocatable, dimension(:,:) :: strf ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: vloc ! dimensions = [:,:]
  real(dp), allocatable, dimension(:,:) :: vloc ! dimensions = [:,:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type vlocal_type
