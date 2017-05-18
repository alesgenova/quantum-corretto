alloc_args = {}
init_args = {"nbnd": {"type": "integer", "dimension": null}, "nbndx": {"type": "integer", "dimension": null}, "nspin": {"type": "integer", "dimension": null}, "nel": {"type": "integer", "dimension": "2"}, "nelt": {"type": "integer", "dimension": null}, "nupdwn": {"type": "integer", "dimension": "2"}, "iupdwn": {"type": "integer", "dimension": "2"}, "nudx": {"type": "integer", "dimension": null}, "nbsp": {"type": "integer", "dimension": null}, "nbspx": {"type": "integer", "dimension": null}, "nupdwn_bgrp": {"type": "integer", "dimension": "2"}, "iupdwn_bgrp": {"type": "integer", "dimension": "2"}, "nudx_bgrp": {"type": "integer", "dimension": null}, "nbsp_bgrp": {"type": "integer", "dimension": null}, "nbspx_bgrp": {"type": "integer", "dimension": null}, "i2gupdwn_bgrp": {"type": "integer", "dimension": "2"}, "telectrons_base_initval": {"type": "logical", "dimension": null}, "keep_occ": {"type": "logical", "dimension": null}, "f": {"type": "real(dp)", "dimension": ":"}, "qbac": {"type": "real(dp)", "dimension": null}, "ispin": {"type": "integer", "dimension": ":"}, "f_bgrp": {"type": "real(dp)", "dimension": ":"}, "ispin_bgrp": {"type": "integer", "dimension": ":"}, "ibgrp_g2l": {"type": "integer", "dimension": ":"}}
type :: electrons_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nbnd = 0
  integer :: nbndx = 0
  integer :: nspin = 0
  integer, dimension(2) :: nel = 0
  integer :: nelt = 0
  integer, dimension(2) :: nupdwn = 0
  integer, dimension(2) :: iupdwn = 0
  integer :: nudx = 0
  integer :: nbsp = 0
  integer :: nbspx = 0
  integer, dimension(2) :: nupdwn_bgrp = 0
  integer, dimension(2) :: iupdwn_bgrp = 0
  integer :: nudx_bgrp = 0
  integer :: nbsp_bgrp = 0
  integer :: nbspx_bgrp = 0
  integer, dimension(2) :: i2gupdwn_bgrp = 0
  logical :: telectrons_base_initval = .false.
  logical :: keep_occ = .false.
  real(dp), allocatable, dimension(:) :: f ! dimensions = [":"]
  real(dp) :: qbac = 0.0_dp
  integer, allocatable, dimension(:) :: ispin ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: f_bgrp ! dimensions = [":"]
  integer, allocatable, dimension(:) :: ispin_bgrp ! dimensions = [":"]
  integer, allocatable, dimension(:) :: ibgrp_g2l ! dimensions = [":"]
  integer, allocatable, dimension(:) :: ibgrp_g2l ! dimensions = [":"]
contains
  procedure, pass :: alloc => electrons_base_type_alloc
  procedure, pass :: init => electrons_base_type_init
  procedure, pass :: update => electrons_base_type_update
  procedure, pass :: dealloc => electrons_base_type_dealloc
end type electrons_base_type
