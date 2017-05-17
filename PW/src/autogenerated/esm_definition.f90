type :: esm_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: do_comp_esm = .false.
  integer :: esm_nfit
  real(kind=dp) :: esm_efield
  real(kind=dp) :: esm_w
  real(kind=dp) :: esm_a
  character(len=3) :: esm_bc
  integer, allocatable, dimension(:,:) :: mill_2d
  integer, allocatable, dimension(:,:) :: imill_2d
  integer :: ngm_2d = 0
  real(dp) :: qe_erf
  real(dp) :: qe_erfc
  real(dp) :: qe_erfc
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type esm_type
