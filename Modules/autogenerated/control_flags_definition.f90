type :: control_flags_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: trhor = .false.
  logical :: trhow = .false.
  logical :: tksw = .false.
  logical :: tsde = .false.
  logical :: tzeroe = .false.
  logical :: tfor = .false.
  logical :: tsdp = .false.
  logical :: tzerop = .false.
  logical :: tprnfor = .false.
  logical :: taurdr = .false.
  logical :: tv0rd = .false.
  logical :: tpre = .false.
  logical :: thdyn = .false.
  logical :: tsdc = .false.
  logical :: tzeroc = .false.
  logical :: tstress = .false.
  logical :: tortho = .false.
  logical :: timing = .false.
  logical :: memchk = .false.
  logical :: tscreen = .false.
  logical :: twfcollect = .false.
  logical :: lkpoint_dir = .true.
  logical :: force_pairing = .false.
  logical :: lecrpa = .false.
  logical :: tddfpt = .false.
  logical :: smallmem = .false.
  type(convergence_criteria) :: tconvthrs
  logical :: tionstep = .false.
  integer :: nstepe = 1
  integer :: nbeg = 0
  integer :: ndw = 0
  integer :: ndr = 0
  integer :: nomore = 0
  integer :: iprint = 10
  integer :: isave = 0
  logical :: gamma_only = .true.
  real(dp) :: dt_old = -1.0_dp
  logical :: trane = .false.
  real(dp) :: ampre = 0.0_dp
  logical, dimension(nsx) :: tranp = .false.
  real(dp), dimension(nsx) :: amprp = 0.0_dp
  logical :: tbeg = .false.
  logical :: tnosee = .false.
  logical :: tnoseh = .false.
  logical :: tnosep = .false.
  logical :: tcap = .false.
  logical :: tcp = .false.
  real(dp) :: tolp = 0.0_dp
  real(dp) :: ekin_conv_thr = 0.0_dp
  real(dp) :: etot_conv_thr = 0.0_dp
  real(dp) :: forc_conv_thr = 0.0_dp
  integer :: ekin_maxiter = 100
  integer :: etot_maxiter = 100
  integer :: forc_maxiter = 100
  logical :: lscf = .false.
  logical :: lbfgs = .false.
  logical :: lmd = .false.
  logical :: lwf = .false.
  logical :: lwfnscf = .false.
  logical :: lwfpbe0nscf = .false.
  logical :: lbands = .false.
  logical :: lconstrain = .false.
  logical :: llondon = .false.
  logical :: ts_vdw = .false.
  logical :: lxdm = .false.
  logical :: restart = .false.
  integer :: ngm0
  integer :: niter
  integer :: nmix
  integer :: imix
  integer :: n_scf_steps
  real(dp) :: mixing_beta
  real(dp) :: tr2
  real(dp) :: scf_error = 0.0
  logical :: conv_elec
  logical :: adapt_thr
  real(dp) :: tr2_init
  real(dp) :: tr2_multi
  logical :: scf_must_converge
  real(dp) :: ethr
  integer :: isolve
  integer :: david
  integer :: max_cg_iter
  logical :: diago_full_acc = .false.
  integer :: nstep = 1
  integer :: istep = 0
  logical :: conv_ions
  real(dp) :: upscale
  logical :: noinv = .false.
  integer :: modenum
  integer :: io_level = 1
  integer :: iverbosity = 0
  logical :: use_para_diag = .false.
  logical :: remove_rigid_rot = .false.
  logical :: do_makov_payne = .false.
  integer :: ortho_max = 0
  real(dp) :: ortho_eps = 0.0_dp
  integer :: iesr = 1
  logical :: tqr = .false.
  logical :: tq_smoothing = .false.
  logical :: tbeta_smoothing = .false.
  logical :: textfor = .false.
  logical :: textfor = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type control_flags_type
