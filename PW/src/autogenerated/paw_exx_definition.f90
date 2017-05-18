alloc_args = {}
init_args = {"ke": {"type": "type(paw_fockrnl_type)", "dimension": ":"}, "paw_has_init_paw_fockrnl": {"type": "logical", "dimension": null}}
type :: paw_exx_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(paw_fockrnl_type), allocatable, dimension(:) :: ke ! dimensions = [:]
  logical :: paw_has_init_paw_fockrnl = .false.
  logical :: paw_has_init_paw_fockrnl = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type paw_exx_type
