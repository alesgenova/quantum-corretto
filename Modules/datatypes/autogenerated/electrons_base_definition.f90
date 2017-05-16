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
  real(dp), allocatable, dimension(:) :: f
  real(dp) :: qbac = 0.0_dp
  integer, allocatable, dimension(:) :: ispin
  real(dp), allocatable, dimension(:) :: f_bgrp
  integer, allocatable, dimension(:) :: ispin_bgrp
  integer, allocatable, dimension(:) :: ibgrp_g2l
  integer, allocatable, dimension(:) :: ibgrp_g2l
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type electrons_base_type
