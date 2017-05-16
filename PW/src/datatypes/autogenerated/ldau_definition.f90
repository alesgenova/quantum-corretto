type :: ldau_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nspinx = 2
  complex(dp), allocatable, dimension(:,:) :: wfcU
  complex(dp), allocatable, dimension(:,:,:) :: d_spin_ldau
  real(dp) :: eth
  real(dp), dimension(ntypx) :: Hubbard_U
  real(dp), dimension(ntypx) :: Hubbard_J0
  real(dp), dimension(3,ntypx) :: Hubbard_J
  real(dp), dimension(ntypx) :: Hubbard_alpha
  real(dp), dimension(ntypx) :: Hubbard_beta
  real(dp), dimension(lqmax,nspinx,ntypx) :: starting_ns
  integer :: nwfcU
  integer :: niter_with_fixed_ns
  integer :: lda_plus_u_kind
  integer, dimension(ntypx) :: Hubbard_l
  integer :: Hubbard_lmax = 0
  logical, dimension(ntypx) :: is_hubbard
  logical :: lda_plus_u
  logical :: conv_ns
  character(len=30) :: U_projection
  integer, allocatable, dimension(:) :: oatwfc
  integer, allocatable, dimension(:) :: offsetU
  real(dp), allocatable, dimension(:,:,:) :: q_ae
  real(dp), allocatable, dimension(:,:,:) :: q_ps
  real(dp), allocatable, dimension(:,:,:) :: q_ps
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type ldau_type
