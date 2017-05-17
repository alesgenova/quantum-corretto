type :: bspline_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(80) :: routine
  character(256) :: errmsg
  character(256) :: errmsg
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type bspline_type
