init_args = {}
type :: splinelib_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => splinelib_type_init
  procedure, pass :: update => splinelib_type_update
end type splinelib_type
