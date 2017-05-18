init_args = {"nbgrp": {"type": "integer", "dimension": null}, "nproc_bgrp": {"type": "integer", "dimension": null}, "me_bgrp": {"type": "integer", "dimension": null}, "root_bgrp": {"type": "integer", "dimension": null}, "my_bgrp_id": {"type": "integer", "dimension": null}, "root_bgrp_id": {"type": "integer", "dimension": null}, "inter_bgrp_comm": {"type": "integer", "dimension": null}, "intra_bgrp_comm": {"type": "integer", "dimension": null}, "use_bgrp_in_hpsi": {"type": "logical", "dimension": null}, "ntask_groups": {"type": "integer", "dimension": null}}
type :: mp_bands_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nbgrp = 1
  integer :: nproc_bgrp = 1
  integer :: me_bgrp = 0
  integer :: root_bgrp = 0
  integer :: my_bgrp_id = 0
  integer :: root_bgrp_id = 0
  integer :: inter_bgrp_comm = 0
  integer :: intra_bgrp_comm = 0
  logical :: use_bgrp_in_hpsi = .false.
  integer :: ntask_groups = 1
  integer :: ntask_groups = 1
contains
  procedure, pass :: init
  procedure, pass :: update
end type mp_bands_type
