init_args = {"nbgrp": {"type": "integer", "dimension": null}, "nproc_bgrp": {"type": "integer", "dimension": null}, "me_bgrp": {"type": "integer", "dimension": null}, "root_bgrp": {"type": "integer", "dimension": null}, "my_bgrp_id": {"type": "integer", "dimension": null}, "inter_bgrp_comm": {"type": "integer", "dimension": null}, "intra_bgrp_comm": {"type": "integer", "dimension": null}, "ntask_groups": {"type": "integer", "dimension": null}, "ibnd_start": {"type": "integer", "dimension": null}, "ibnd_end": {"type": "integer", "dimension": null}}
type :: mp_bands_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nbgrp = 1
  integer :: nproc_bgrp = 1
  integer :: me_bgrp = 0
  integer :: root_bgrp = 0
  integer :: my_bgrp_id = 0
  integer :: inter_bgrp_comm = 0
  integer :: intra_bgrp_comm = 0
  integer :: ntask_groups = 1
  integer :: ibnd_start = 0
  integer :: ibnd_end = 0

contains
  procedure, pass :: init => mp_bands_type_init
  procedure, pass :: update => mp_bands_type_update
end type mp_bands_type
