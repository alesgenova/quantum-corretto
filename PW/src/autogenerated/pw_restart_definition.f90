type :: pw_restart_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=256) :: trimcheck
  integer :: iunout
  logical :: lcell_read = .false.
  logical :: lpw_read = .false.
  logical :: lions_read = .false.
  logical :: lspin_read = .false.
  logical :: lstarting_mag_read = .false.
  logical :: lxc_read = .false.
  logical :: locc_read = .false.
  logical :: lbz_read = .false.
  logical :: lbs_read = .false.
  logical :: lefield_read = .false.
  logical :: lwfc_read = .false.
  logical :: lsymm_read = .false.
  logical :: lsymm_read = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type pw_restart_type
