type :: qexsd_input_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: dummy__
  integer :: dummy__
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type qexsd_input_type
