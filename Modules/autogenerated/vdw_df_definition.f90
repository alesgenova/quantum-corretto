init_args = {"epsr": {"type": "real(dp)", "dimension": null}, "vdw_type": {"type": "integer", "dimension": null}}
type :: vdw_df_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: epsr = 1.d-12
  integer :: vdw_type = 1
  integer :: vdw_type = 1
contains
  procedure, pass :: init
  procedure, pass :: update
end type vdw_df_type
