type :: pwcom_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => pwcom_type_init
  procedure, pass :: update => pwcom_type_update
end type pwcom_type
