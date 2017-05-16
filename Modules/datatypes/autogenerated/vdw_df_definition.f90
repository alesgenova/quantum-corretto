type :: vdw_df_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: epsr = 1.d-12
  integer :: vdw_type = 1
  integer :: vdw_type = 1
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type vdw_df_type
