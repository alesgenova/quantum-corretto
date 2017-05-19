alloc_args = {}
init_args = {"strf": {"type": "complex(dp)", "dimension": ":,:"}, "vloc": {"type": "real(dp)", "dimension": ":,:"}}
type :: vlocal_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  complex(dp), allocatable, dimension(:,:) :: strf ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: vloc ! dimensions = [":", ":"]

contains
  procedure, pass :: alloc => vlocal_type_alloc
  procedure, pass :: init => vlocal_type_init
  procedure, pass :: update => vlocal_type_update
  procedure, pass :: dealloc => vlocal_type_dealloc
end type vlocal_type
