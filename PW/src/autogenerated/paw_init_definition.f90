init_args = {"TIMING": {"type": "logical", "dimension": null}}
type :: paw_init_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: TIMING = .false.
  logical :: TIMING = .false.
contains
  procedure, pass :: init
  procedure, pass :: update
end type paw_init_type
