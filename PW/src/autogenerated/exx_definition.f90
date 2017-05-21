alloc_args = {}
init_args = {"exxalfa": {"type": "real(dp)", "dimension": null}, "exx_nwordwfc": {"type": "integer", "dimension": null}, "ji": {"type": "integer", "dimension": null}, "exx_augmented": {"type": "character(len=1)", "dimension": null}, "nq1": {"type": "integer", "dimension": null}, "nq2": {"type": "integer", "dimension": null}, "nq3": {"type": "integer", "dimension": null}, "nqs": {"type": "integer", "dimension": null}, "nkqs": {"type": "integer", "dimension": null}, "xkq_collect": {"type": "real(dp)", "dimension": ":,:"}, "x_occupation": {"type": "real(dp)", "dimension": ":,:"}, "exxbuff": {"type": "complex(dp)", "dimension": ":,:,:"}, "index_xkq": {"type": "integer", "dimension": ":,:"}, "index_xk": {"type": "integer", "dimension": ":"}, "index_sym": {"type": "integer", "dimension": ":"}, "rir": {"type": "integer", "dimension": ":,:"}, "xk_collect": {"type": "real(dp)", "dimension": ":,:"}, "wk_collect": {"type": "real(dp)", "dimension": ":"}, "wg_collect": {"type": "real(dp)", "dimension": ":,:"}, "exx_grid_initialized": {"type": "logical", "dimension": null}, "eps": {"type": "real(dp)", "dimension": null}, "eps_qdiv": {"type": "real(dp)", "dimension": null}, "eps_occ": {"type": "real(dp)", "dimension": null}, "exxdiv": {"type": "real(dp)", "dimension": null}, "exxdiv_treatment": {"type": "character(32)", "dimension": null}, "x_gamma_extrapolation": {"type": "logical", "dimension": null}, "on_double_grid": {"type": "logical", "dimension": null}, "grid_factor": {"type": "real(dp)", "dimension": null}, "use_regularization": {"type": "logical", "dimension": null}, "yukawa": {"type": "real(dp)", "dimension": null}, "erfc_scrlen": {"type": "real(dp)", "dimension": null}, "erf_scrlen": {"type": "real(dp)", "dimension": null}, "gau_scrlen": {"type": "real(dp)", "dimension": null}, "use_coulomb_vcut_ws": {"type": "logical", "dimension": null}, "use_coulomb_vcut_spheric": {"type": "logical", "dimension": null}, "ecutvcut": {"type": "real(dp)", "dimension": null}, "vcut": {"type": "type(vcut_type)", "dimension": null}, "fock0": {"type": "real(dp)", "dimension": null}, "fock1": {"type": "real(dp)", "dimension": null}, "fock2": {"type": "real(dp)", "dimension": null}, "dexx": {"type": "real(dp)", "dimension": null}, "ecutfock": {"type": "real(dp)", "dimension": null}, "exx_dual": {"type": "real(dp)", "dimension": null}}
type :: exx_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: exxalfa = 0._dp
  integer :: exx_nwordwfc
  integer :: ji
  character(len=1) :: exx_augmented = 'x'
  integer :: nq1 = 1
  integer :: nq2 = 1
  integer :: nq3 = 1
  integer :: nqs = 1
  integer :: nkqs
  real(dp), allocatable, dimension(:,:) :: xkq_collect ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: x_occupation ! dimensions = [":", ":"]
  complex(dp), allocatable, dimension(:,:,:) :: exxbuff ! dimensions = [":", ":", ":"]
  integer, allocatable, dimension(:,:) :: index_xkq ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: index_xk ! dimensions = [":"]
  integer, allocatable, dimension(:) :: index_sym ! dimensions = [":"]
  integer, allocatable, dimension(:,:) :: rir ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: xk_collect ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:) :: wk_collect ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: wg_collect ! dimensions = [":", ":"]
  logical :: exx_grid_initialized = .false.
  real(dp) :: eps = 1.d-6
  real(dp) :: eps_qdiv = 1.d-8
  real(dp) :: eps_occ = eps_occ_usxx
  real(dp) :: exxdiv = 0._dp
  character(32) :: exxdiv_treatment = ''
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
  real(dp) :: exx_dual = 4.0_dp

#define _cx(a)  cmplx(a,0._dp,kind=dp) 

#define _cy(a)  cmplx(0._dp,-a,kind=dp) 

contains
  procedure, pass :: alloc => exx_type_alloc
  procedure, pass :: init => exx_type_init
  procedure, pass :: update => exx_type_update
  procedure, pass :: dealloc => exx_type_dealloc
end type exx_type
