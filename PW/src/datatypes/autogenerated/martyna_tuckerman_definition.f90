type :: martyna_tuckerman_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(ws_type) :: ws
  real(dp) :: alpha
  real(dp) :: beta
  real(dp), allocatable, dimension(:) :: wg_corr
  logical :: wg_corr_is_updated = .false.
  logical :: do_comp_mt = .false.
  logical :: gamma_only = .false.
  integer :: gstart = 1
  integer :: gstart = 1
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type martyna_tuckerman_type
