init_args = {}
type :: paw_symmetry_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => paw_symmetry_type_init
  procedure, pass :: update => paw_symmetry_type_update
end type paw_symmetry_type
