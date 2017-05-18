init_args = {"routine": {"type": "character(80)", "dimension": null}, "errmsg": {"type": "character(256)", "dimension": null}}
type :: bspline_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(80) :: routine
  character(256) :: errmsg
  character(256) :: errmsg
contains
  procedure, pass :: init => bspline_type_init
  procedure, pass :: update => bspline_type_update
end type bspline_type
