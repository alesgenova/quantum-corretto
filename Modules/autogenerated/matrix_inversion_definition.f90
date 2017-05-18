init_args = {}
type :: matrix_inversion_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type matrix_inversion_type
