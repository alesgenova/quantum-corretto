alloc_args = {}
init_args = {"becxx": {"type": "type(bec_type)", "dimension": ":"}, "becxx0": {"type": "type(bec_type)", "dimension": ":"}, "qgm": {"type": "complex(dp)", "dimension": ":,:"}}
type :: us_exx_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(bec_type), allocatable, dimension(:) :: becxx ! dimensions = [:]
  type(bec_type), allocatable, dimension(:) :: becxx0 ! dimensions = [:]
  complex(dp), allocatable, dimension(:,:) :: qgm ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:,:) :: qgm ! dimensions = [:,:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type us_exx_type
