init_args = {"trimcheck": {"type": "character(len=256)", "dimension": null}, "iunout": {"type": "integer", "dimension": null}, "lcell_read": {"type": "logical", "dimension": null}, "lpw_read": {"type": "logical", "dimension": null}, "lions_read": {"type": "logical", "dimension": null}, "lspin_read": {"type": "logical", "dimension": null}, "lstarting_mag_read": {"type": "logical", "dimension": null}, "lxc_read": {"type": "logical", "dimension": null}, "locc_read": {"type": "logical", "dimension": null}, "lbz_read": {"type": "logical", "dimension": null}, "lbs_read": {"type": "logical", "dimension": null}, "lefield_read": {"type": "logical", "dimension": null}, "lwfc_read": {"type": "logical", "dimension": null}, "lsymm_read": {"type": "logical", "dimension": null}}
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
  procedure, pass :: init => pw_restart_type_init
  procedure, pass :: update => pw_restart_type_update
end type pw_restart_type
