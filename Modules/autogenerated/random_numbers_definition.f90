init_args = {}
type :: random_numbers_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type random_numbers_type
