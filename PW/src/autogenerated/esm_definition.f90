alloc_args = {}
init_args = {"do_comp_esm": {"type": "logical", "dimension": null}, "esm_nfit": {"type": "integer", "dimension": null}, "esm_efield": {"type": "real(kind=dp)", "dimension": null}, "esm_w": {"type": "real(kind=dp)", "dimension": null}, "esm_bc": {"type": "character(len=3)", "dimension": null}, "mill_2d": {"type": "integer", "dimension": ":,:"}, "imill_2d": {"type": "integer", "dimension": ":,:"}, "ngm_2d": {"type": "integer", "dimension": null}}
type :: esm_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: do_comp_esm = .false.
  integer :: esm_nfit
  real(kind=dp) :: esm_efield
  real(kind=dp) :: esm_w
  character(len=3) :: esm_bc
  integer, allocatable, dimension(:,:) :: mill_2d ! dimensions = [":", ":"]
  integer, allocatable, dimension(:,:) :: imill_2d ! dimensions = [":", ":"]
  integer :: ngm_2d = 0

contains
  procedure, pass :: alloc => esm_type_alloc
  procedure, pass :: init => esm_type_init
  procedure, pass :: update => esm_type_update
  procedure, pass :: dealloc => esm_type_dealloc
end type esm_type
