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
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type mp_bands_type
