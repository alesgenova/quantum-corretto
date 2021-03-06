alloc_args = {}
init_args = {"ke": {"type": "type(paw_keeq_type)", "dimension": ":"}, "paw_has_init_keeq": {"type": "logical", "dimension": null}, "dopawxx": {"type": "logical", "dimension": null}}
type :: paw_exx_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(paw_keeq_type), allocatable, dimension(:) :: ke ! dimensions = [":"]
  logical :: paw_has_init_keeq = .false.
  logical :: dopawxx = .true.

contains
  procedure, pass :: alloc => paw_exx_type_alloc
  procedure, pass :: init => paw_exx_type_init
  procedure, pass :: update => paw_exx_type_update
  procedure, pass :: dealloc => paw_exx_type_dealloc
end type paw_exx_type
