type :: random_numbers_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => random_numbers_type_init
  procedure, pass :: update => random_numbers_type_update
end type random_numbers_type
