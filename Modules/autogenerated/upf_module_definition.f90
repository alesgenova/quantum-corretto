type :: upf_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

#define trim(a) trim(adjustl(a)) 

contains
  procedure, pass :: init => upf_module_type_init
  procedure, pass :: update => upf_module_type_update
end type upf_module_type
