init_args = {}
type :: wy_pos_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => wy_pos_type_init
  procedure, pass :: update => wy_pos_type_update
end type wy_pos_type
