alloc_args = {}
init_args = {"psi_exx": {"type": "complex(dp)", "dimension": ":,:"}, "hpsi_exx": {"type": "complex(dp)", "dimension": ":,:"}, "evc_exx": {"type": "complex(dp)", "dimension": ":,:"}, "psic_exx": {"type": "complex(dp)", "dimension": ":"}, "lda_original": {"type": "integer", "dimension": null}, "n_original": {"type": "integer", "dimension": null}, "exxalfa": {"type": "real(dp)", "dimension": null}, "nq1": {"type": "integer", "dimension": null}, "nq2": {"type": "integer", "dimension": null}, "nq3": {"type": "integer", "dimension": null}, "nqs": {"type": "integer", "dimension": null}, "nkqs": {"type": "integer", "dimension": null}, "xkq_collect": {"type": "real(dp)", "dimension": ":,:"}, "x_occupation": {"type": "real(dp)", "dimension": ":,:"}, "x_nbnd_occ": {"type": "integer", "dimension": null}, "ibnd_start": {"type": "integer", "dimension": null}, "ibnd_end": {"type": "integer", "dimension": null}, "exxbuff": {"type": "complex(dp)", "dimension": ":,:,:"}, "use_ace": {"type": "logical", "dimension": null}, "xi": {"type": "complex(dp)", "dimension": ":,:,:"}, "nbndproj": {"type": "integer", "dimension": null}, "domat": {"type": "logical", "dimension": null}, "index_xkq": {"type": "integer", "dimension": ":,:"}, "index_xk": {"type": "integer", "dimension": ":"}, "index_sym": {"type": "integer", "dimension": ":"}, "rir": {"type": "integer", "dimension": ":,:"}, "working_pool": {"type": "integer", "dimension": ":"}, "exx_grid_initialized": {"type": "logical", "dimension": null}, "eps": {"type": "real(dp)", "dimension": null}, "eps_qdiv": {"type": "real(dp)", "dimension": null}, "eps_occ": {"type": "real(dp)", "dimension": null}, "exxdiv": {"type": "real(dp)", "dimension": null}, "exxdiv_treatment": {"type": "character(32)", "dimension": null}, "x_gamma_extrapolation": {"type": "logical", "dimension": null}, "on_double_grid": {"type": "logical", "dimension": null}, "grid_factor": {"type": "real(dp)", "dimension": null}, "use_regularization": {"type": "logical", "dimension": null}, "yukawa": {"type": "real(dp)", "dimension": null}, "erfc_scrlen": {"type": "real(dp)", "dimension": null}, "erf_scrlen": {"type": "real(dp)", "dimension": null}, "gau_scrlen": {"type": "real(dp)", "dimension": null}, "use_coulomb_vcut_ws": {"type": "logical", "dimension": null}, "use_coulomb_vcut_spheric": {"type": "logical", "dimension": null}, "ecutvcut": {"type": "real(dp)", "dimension": null}, "vcut": {"type": "type(vcut_type)", "dimension": null}, "fock0": {"type": "real(dp)", "dimension": null}, "fock1": {"type": "real(dp)", "dimension": null}, "fock2": {"type": "real(dp)", "dimension": null}, "dexx": {"type": "real(dp)", "dimension": null}, "ecutfock": {"type": "real(dp)", "dimension": null}, "comm_recv": {"type": "type(comm_packet)", "dimension": ":,:"}, "comm_send": {"type": "type(comm_packet)", "dimension": ":,:"}, "comm_recv_reverse": {"type": "type(comm_packet)", "dimension": ":,:"}, "comm_send_reverse": {"type": "type(comm_packet)", "dimension": ":,:,:"}, "lda_local": {"type": "integer", "dimension": ":,:"}, "lda_exx": {"type": "integer", "dimension": ":,:"}, "ngk_local": {"type": "integer", "dimension": ":"}, "ngk_exx": {"type": "integer", "dimension": ":"}, "igk_exx": {"type": "integer", "dimension": ":,:"}, "npwx_local": {"type": "integer", "dimension": null}, "npwx_exx": {"type": "integer", "dimension": null}, "npw_local": {"type": "integer", "dimension": null}, "npw_exx": {"type": "integer", "dimension": null}, "n_local": {"type": "integer", "dimension": null}, "nwordwfc_exx": {"type": "integer", "dimension": null}, "first_data_structure_change": {"type": "logical", "dimension": null}, "ngm_loc": {"type": "integer", "dimension": null}, "ngm_g_loc": {"type": "integer", "dimension": null}, "gstart_loc": {"type": "integer", "dimension": null}, "ig_l2g_loc": {"type": "integer", "dimension": ":"}, "g_loc": {"type": "real(dp)", "dimension": ":,:"}, "gg_loc": {"type": "real(dp)", "dimension": ":"}, "mill_loc": {"type": "integer", "dimension": ":,:"}, "nl_loc": {"type": "integer", "dimension": ":"}, "ngms_loc": {"type": "integer", "dimension": null}, "ngms_g_loc": {"type": "integer", "dimension": null}, "nls_loc": {"type": "integer", "dimension": ":"}, "nlm_loc": {"type": "integer", "dimension": ":"}, "nlsm_loc": {"type": "integer", "dimension": ":"}, "ngm_exx": {"type": "integer", "dimension": null}, "ngm_g_exx": {"type": "integer", "dimension": null}, "gstart_exx": {"type": "integer", "dimension": null}, "ig_l2g_exx": {"type": "integer", "dimension": ":"}, "g_exx": {"type": "real(dp)", "dimension": ":,:"}, "gg_exx": {"type": "real(dp)", "dimension": ":"}, "mill_exx": {"type": "integer", "dimension": ":,:"}, "nl_exx": {"type": "integer", "dimension": ":"}, "ngms_exx": {"type": "integer", "dimension": null}, "ngms_g_exx": {"type": "integer", "dimension": null}, "nls_exx": {"type": "integer", "dimension": ":"}, "nlm_exx": {"type": "integer", "dimension": ":"}, "nlsm_exx": {"type": "integer", "dimension": ":"}, "coulomb_fac": {"type": "real(dp)", "dimension": ":,:,:"}, "coulomb_done": {"type": "logical", "dimension": ":,:"}, "dfftp_loc": {"type": "type(fft_type_descriptor)", "dimension": null}, "dffts_loc": {"type": "type(fft_type_descriptor)", "dimension": null}, "dfftp_exx": {"type": "type(fft_type_descriptor)", "dimension": null}, "dffts_exx": {"type": "type(fft_type_descriptor)", "dimension": null}, "smap_exx": {"type": "type(sticks_map)", "dimension": null}, "ngw_loc": {"type": "integer", "dimension": null}, "ngs_loc": {"type": "integer", "dimension": null}, "ngw_exx": {"type": "integer", "dimension": null}, "ngs_exx": {"type": "integer", "dimension": null}}
type :: exx_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  complex(dp), allocatable, dimension(:,:) :: psi_exx ! dimensions = [":", ":"]
  complex(dp), allocatable, dimension(:,:) :: hpsi_exx ! dimensions = [":", ":"]
  complex(dp), allocatable, dimension(:,:) :: evc_exx ! dimensions = [":", ":"]
  complex(dp), allocatable, dimension(:) :: psic_exx ! dimensions = [":"]
  integer :: lda_original
  integer :: n_original
  real(dp) :: exxalfa = 0._dp
  integer :: nq1 = 1
  integer :: nq2 = 1
  integer :: nq3 = 1
  integer :: nqs = 1
  integer :: nkqs
  real(dp), allocatable, dimension(:,:) :: xkq_collect ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: x_occupation ! dimensions = [":", ":"]
  integer :: x_nbnd_occ
  integer :: ibnd_start = 0
  integer :: ibnd_end = 0
  complex(dp), allocatable, dimension(:,:,:) :: exxbuff ! dimensions = [":", ":", ":"]
  logical :: use_ace = .true.
  complex(dp), allocatable, dimension(:,:,:) :: xi ! dimensions = [":", ":", ":"]
  integer :: nbndproj
  logical :: domat
  integer, allocatable, dimension(:,:) :: index_xkq ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: index_xk ! dimensions = [":"]
  integer, allocatable, dimension(:) :: index_sym ! dimensions = [":"]
  integer, allocatable, dimension(:,:) :: rir ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: working_pool ! dimensions = [":"]
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
  type(comm_packet), allocatable, dimension(:,:) :: comm_recv ! dimensions = [":", ":"]
  type(comm_packet), allocatable, dimension(:,:) :: comm_send ! dimensions = [":", ":"]
  type(comm_packet), allocatable, dimension(:,:) :: comm_recv_reverse ! dimensions = [":", ":"]
  type(comm_packet), allocatable, dimension(:,:,:) :: comm_send_reverse ! dimensions = [":", ":", ":"]
  integer, allocatable, dimension(:,:) :: lda_local ! dimensions = [":", ":"]
  integer, allocatable, dimension(:,:) :: lda_exx ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: ngk_local ! dimensions = [":"]
  integer, allocatable, dimension(:) :: ngk_exx ! dimensions = [":"]
  integer, allocatable, dimension(:,:) :: igk_exx ! dimensions = [":", ":"]
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
  integer, allocatable, dimension(:) :: ig_l2g_loc ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: g_loc ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:) :: gg_loc ! dimensions = [":"]
  integer, allocatable, dimension(:,:) :: mill_loc ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: nl_loc ! dimensions = [":"]
  integer :: ngms_loc
  integer :: ngms_g_loc
  integer, allocatable, dimension(:) :: nls_loc ! dimensions = [":"]
  integer, allocatable, dimension(:) :: nlm_loc ! dimensions = [":"]
  integer, allocatable, dimension(:) :: nlsm_loc ! dimensions = [":"]
  integer :: ngm_exx
  integer :: ngm_g_exx
  integer :: gstart_exx
  integer, allocatable, dimension(:) :: ig_l2g_exx ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: g_exx ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:) :: gg_exx ! dimensions = [":"]
  integer, allocatable, dimension(:,:) :: mill_exx ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: nl_exx ! dimensions = [":"]
  integer :: ngms_exx
  integer :: ngms_g_exx
  integer, allocatable, dimension(:) :: nls_exx ! dimensions = [":"]
  integer, allocatable, dimension(:) :: nlm_exx ! dimensions = [":"]
  integer, allocatable, dimension(:) :: nlsm_exx ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:,:) :: coulomb_fac ! dimensions = [":", ":", ":"]
  logical, allocatable, dimension(:,:) :: coulomb_done ! dimensions = [":", ":"]
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
  procedure, pass :: alloc => exx_type_alloc
  procedure, pass :: init => exx_type_init
  procedure, pass :: update => exx_type_update
  procedure, pass :: dealloc => exx_type_dealloc
end type exx_type
