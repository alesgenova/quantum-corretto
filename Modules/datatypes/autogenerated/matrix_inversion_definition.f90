type :: matrix_inversion_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: alloc
  procedure, pass :: init
end type matrix_inversion_type
