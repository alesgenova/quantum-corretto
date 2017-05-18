init_args = {}
type :: matrix_inversion_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => matrix_inversion_type_init
  procedure, pass :: update => matrix_inversion_type_update
end type matrix_inversion_type
