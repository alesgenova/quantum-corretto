type :: esm_cft_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: cft_initialized = .false.
  integer :: nfftx = 2049
  integer :: lwork
  real(dp), dimension(:, :) :: work
  integer :: ltabl = 2 * nfftx + 64
  real(dp), dimension(ltabl) :: fw_tablez
  real(dp), dimension(ltabl) :: bw_tablez
  real(dp), dimension(ltabl) :: tablez
  integer :: isys = 1
  integer :: isys = 1
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type esm_cft_type
