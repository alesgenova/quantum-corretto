init_args = {}
type :: paw_symmetry_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type paw_symmetry_type
