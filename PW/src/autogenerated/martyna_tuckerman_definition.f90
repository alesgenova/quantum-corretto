alloc_args = {}
init_args = {"ws": {"type": "type(ws_type)", "dimension": null}, "alpha": {"type": "real(dp)", "dimension": null}, "beta": {"type": "real(dp)", "dimension": null}, "wg_corr": {"type": "real(dp)", "dimension": ":"}, "wg_corr_is_updated": {"type": "logical", "dimension": null}, "do_comp_mt": {"type": "logical", "dimension": null}, "gamma_only": {"type": "logical", "dimension": null}, "gstart": {"type": "integer", "dimension": null}}
type :: martyna_tuckerman_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(ws_type) :: ws
  real(dp) :: alpha
  real(dp) :: beta
  real(dp), allocatable, dimension(:) :: wg_corr ! dimensions = [:]
  logical :: wg_corr_is_updated = .false.
  logical :: do_comp_mt = .false.
  logical :: gamma_only = .false.
  integer :: gstart = 1
  integer :: gstart = 1
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type martyna_tuckerman_type
