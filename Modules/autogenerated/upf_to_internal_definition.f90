type :: upf_to_internal_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => upf_to_internal_type_init
  procedure, pass :: update => upf_to_internal_type_update
end type upf_to_internal_type
