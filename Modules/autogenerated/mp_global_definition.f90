init_args = {"nproc_file": {"type": "integer", "dimension": null}, "nproc_image_file": {"type": "integer", "dimension": null}, "nproc_pool_file": {"type": "integer", "dimension": null}, "nproc_ortho_file": {"type": "integer", "dimension": null}, "nproc_bgrp_file": {"type": "integer", "dimension": null}, "ntask_groups_file": {"type": "integer", "dimension": null}}
type :: mp_global_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nproc_file = 1
  integer :: nproc_image_file = 1
  integer :: nproc_pool_file = 1
  integer :: nproc_ortho_file = 1
  integer :: nproc_bgrp_file = 1
  integer :: ntask_groups_file = 1
  integer :: ntask_groups_file = 1
contains
  procedure, pass :: init
  procedure, pass :: update
end type mp_global_type
