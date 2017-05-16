type :: exx_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  complex(dp), allocatable, dimension(:,:) :: psi_exx
  complex(dp), allocatable, dimension(:,:) :: hpsi_exx
  complex(dp), allocatable, dimension(:,:) :: evc_exx
  complex(dp), allocatable, dimension(:) :: psic_exx
  integer :: lda_original
  integer :: n_original
  real(dp) :: exxalfa = 0._dp
  integer :: nq1 = 1
  integer :: nq2 = 1
  integer :: nq3 = 1
  integer :: nqs = 1
  integer :: nkqs
  real(dp), allocatable, dimension(:,:) :: xkq_collect
  real(dp), allocatable, dimension(:,:) :: x_occupation
  integer :: x_nbnd_occ
  integer :: ibnd_start = 0
  integer :: ibnd_end = 0
  complex(dp), allocatable, dimension(:,:,:) :: exxbuff
  logical :: use_ace = .false.
  complex(dp), allocatable, dimension(:,:,:) :: xi
  integer :: nbndproj
  logical :: domat
  integer, allocatable, dimension(:,:) :: index_xkq
  integer, allocatable, dimension(:) :: index_xk
  integer, allocatable, dimension(:) :: index_sym
  integer, allocatable, dimension(:,:) :: rir
  integer, allocatable, dimension(:) :: working_pool
  logical :: exx_grid_initialized = .false.
  real(dp) :: eps = 1.d-6
  real(dp) :: eps_qdiv = 1.d-8
  real(dp) :: eps_occ = 1.d-8
  real(dp) :: exxdiv = 0._dp
  character(32) :: exxdiv_treatment = ' '
  logical :: x_gamma_extrapolation = .true.
  logical :: on_double_grid = .false.
  real(dp) :: grid_factor = 1.d0
  logical :: use_regularization = .true.
  real(dp) :: yukawa = 0._dp
  real(dp) :: erfc_scrlen = 0._dp
  real(dp) :: erf_scrlen = 0._dp
  real(dp) :: gau_scrlen = 0.d0
  logical :: use_coulomb_vcut_ws = .false.
  logical :: use_coulomb_vcut_spheric = .false.
  real(dp) :: ecutvcut
  type(vcut_type) :: vcut
  real(dp) :: fock0 = 0.0_dp
  real(dp) :: fock1 = 0.0_dp
  real(dp) :: fock2 = 0.0_dp
  real(dp) :: dexx = 0.0_dp
  real(dp) :: ecutfock
  type(comm_packet), allocatable, dimension(:,:) :: comm_recv
  type(comm_packet), allocatable, dimension(:,:) :: comm_send
  type(comm_packet), allocatable, dimension(:,:) :: comm_recv_reverse
  type(comm_packet), allocatable, dimension(:,:,:) :: comm_send_reverse
  integer, allocatable, dimension(:,:) :: lda_local
  integer, allocatable, dimension(:,:) :: lda_exx
  integer, allocatable, dimension(:) :: ngk_local
  integer, allocatable, dimension(:) :: ngk_exx
  integer, allocatable, dimension(:,:) :: igk_exx
  integer :: npwx_local = 0
  integer :: npwx_exx = 0
  integer :: npw_local = 0
  integer :: npw_exx = 0
  integer :: n_local = 0
  integer :: nwordwfc_exx
  logical :: first_data_structure_change = .true.
  integer :: ngm_loc
  integer :: ngm_g_loc
  integer :: gstart_loc
  integer, allocatable, dimension(:) :: ig_l2g_loc
  real(dp), allocatable, dimension(:,:) :: g_loc
  real(dp), allocatable, dimension(:) :: gg_loc
  integer, allocatable, dimension(:,:) :: mill_loc
  integer, allocatable, dimension(:) :: nl_loc
  integer :: ngms_loc
  integer :: ngms_g_loc
  integer, allocatable, dimension(:) :: nls_loc
  integer, allocatable, dimension(:) :: nlm_loc
  integer, allocatable, dimension(:) :: nlsm_loc
  integer :: ngm_exx
  integer :: ngm_g_exx
  integer :: gstart_exx
  integer, allocatable, dimension(:) :: ig_l2g_exx
  real(dp), allocatable, dimension(:,:) :: g_exx
  real(dp), allocatable, dimension(:) :: gg_exx
  integer, allocatable, dimension(:,:) :: mill_exx
  integer, allocatable, dimension(:) :: nl_exx
  integer :: ngms_exx
  integer :: ngms_g_exx
  integer, allocatable, dimension(:) :: nls_exx
  integer, allocatable, dimension(:) :: nlm_exx
  integer, allocatable, dimension(:) :: nlsm_exx
  real(dp), allocatable, dimension(:,:,:) :: coulomb_fac
  logical, allocatable, dimension(:,:) :: coulomb_done
  type(fft_type_descriptor) :: dfftp_loc
  type(fft_type_descriptor) :: dffts_loc
  type(fft_type_descriptor) :: dfftp_exx
  type(fft_type_descriptor) :: dffts_exx
  type(sticks_map) :: smap_exx
  integer :: ngw_loc
  integer :: ngs_loc
  integer :: ngw_exx
  integer :: ngs_exx
  integer :: ngs_exx
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type exx_type
