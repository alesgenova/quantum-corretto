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
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type mp_global_type
