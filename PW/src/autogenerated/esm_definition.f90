alloc_args = {}
init_args = {"do_comp_esm": {"type": "logical", "dimension": null}, "esm_nfit": {"type": "integer", "dimension": null}, "esm_efield": {"type": "real(kind=dp)", "dimension": null}, "esm_w": {"type": "real(kind=dp)", "dimension": null}, "esm_a": {"type": "real(kind=dp)", "dimension": null}, "esm_bc": {"type": "character(len=3)", "dimension": null}, "mill_2d": {"type": "integer", "dimension": ":,:"}, "imill_2d": {"type": "integer", "dimension": ":,:"}, "ngm_2d": {"type": "integer", "dimension": null}, "qe_erf": {"type": "real(dp)", "dimension": null}, "qe_erfc": {"type": "real(dp)", "dimension": null}}
type :: esm_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: do_comp_esm = .false.
  integer :: esm_nfit
  real(kind=dp) :: esm_efield
  real(kind=dp) :: esm_w
  real(kind=dp) :: esm_a
  character(len=3) :: esm_bc
  integer, allocatable, dimension(:,:) :: mill_2d ! dimensions = [":", ":"]
  integer, allocatable, dimension(:,:) :: imill_2d ! dimensions = [":", ":"]
  integer :: ngm_2d = 0
  real(dp) :: qe_erf
  real(dp) :: qe_erfc
  real(dp) :: qe_erfc
contains
  procedure, pass :: alloc => esm_type_alloc
  procedure, pass :: init => esm_type_init
  procedure, pass :: update => esm_type_update
  procedure, pass :: dealloc => esm_type_dealloc
end type esm_type
