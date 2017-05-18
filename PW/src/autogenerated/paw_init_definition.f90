init_args = {"TIMING": {"type": "logical", "dimension": null}}
type :: paw_init_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: TIMING = .false.
  logical :: TIMING = .false.
contains
  procedure, pass :: init => paw_init_type_init
  procedure, pass :: update => paw_init_type_update
end type paw_init_type
