init_args = {}
type :: pwcom_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type pwcom_type
