type :: space_group_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => space_group_type_init
  procedure, pass :: update => space_group_type_update
end type space_group_type
