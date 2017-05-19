alloc_args = {}
init_args = {"trhor": {"type": "logical", "dimension": null}, "trhow": {"type": "logical", "dimension": null}, "tksw": {"type": "logical", "dimension": null}, "tsde": {"type": "logical", "dimension": null}, "tzeroe": {"type": "logical", "dimension": null}, "tfor": {"type": "logical", "dimension": null}, "tsdp": {"type": "logical", "dimension": null}, "tzerop": {"type": "logical", "dimension": null}, "tprnfor": {"type": "logical", "dimension": null}, "taurdr": {"type": "logical", "dimension": null}, "tv0rd": {"type": "logical", "dimension": null}, "tpre": {"type": "logical", "dimension": null}, "thdyn": {"type": "logical", "dimension": null}, "tsdc": {"type": "logical", "dimension": null}, "tzeroc": {"type": "logical", "dimension": null}, "tstress": {"type": "logical", "dimension": null}, "tortho": {"type": "logical", "dimension": null}, "timing": {"type": "logical", "dimension": null}, "memchk": {"type": "logical", "dimension": null}, "tscreen": {"type": "logical", "dimension": null}, "twfcollect": {"type": "logical", "dimension": null}, "lkpoint_dir": {"type": "logical", "dimension": null}, "force_pairing": {"type": "logical", "dimension": null}, "lecrpa": {"type": "logical", "dimension": null}, "tddfpt": {"type": "logical", "dimension": null}, "smallmem": {"type": "logical", "dimension": null}, "tconvthrs": {"type": "type(convergence_criteria)", "dimension": null}, "tionstep": {"type": "logical", "dimension": null}, "nstepe": {"type": "integer", "dimension": null}, "nbeg": {"type": "integer", "dimension": null}, "ndw": {"type": "integer", "dimension": null}, "ndr": {"type": "integer", "dimension": null}, "nomore": {"type": "integer", "dimension": null}, "iprint": {"type": "integer", "dimension": null}, "isave": {"type": "integer", "dimension": null}, "gamma_only": {"type": "logical", "dimension": null}, "dt_old": {"type": "real(dp)", "dimension": null}, "trane": {"type": "logical", "dimension": null}, "ampre": {"type": "real(dp)", "dimension": null}, "tranp": {"type": "logical", "dimension": ":"}, "amprp": {"type": "real(dp)", "dimension": ":"}, "tbeg": {"type": "logical", "dimension": null}, "tnosee": {"type": "logical", "dimension": null}, "tnoseh": {"type": "logical", "dimension": null}, "tnosep": {"type": "logical", "dimension": null}, "tcap": {"type": "logical", "dimension": null}, "tcp": {"type": "logical", "dimension": null}, "tolp": {"type": "real(dp)", "dimension": null}, "ekin_conv_thr": {"type": "real(dp)", "dimension": null}, "etot_conv_thr": {"type": "real(dp)", "dimension": null}, "forc_conv_thr": {"type": "real(dp)", "dimension": null}, "ekin_maxiter": {"type": "integer", "dimension": null}, "etot_maxiter": {"type": "integer", "dimension": null}, "forc_maxiter": {"type": "integer", "dimension": null}, "lscf": {"type": "logical", "dimension": null}, "lbfgs": {"type": "logical", "dimension": null}, "lmd": {"type": "logical", "dimension": null}, "lwf": {"type": "logical", "dimension": null}, "lwfnscf": {"type": "logical", "dimension": null}, "lwfpbe0nscf": {"type": "logical", "dimension": null}, "lbands": {"type": "logical", "dimension": null}, "lconstrain": {"type": "logical", "dimension": null}, "llondon": {"type": "logical", "dimension": null}, "ts_vdw": {"type": "logical", "dimension": null}, "lxdm": {"type": "logical", "dimension": null}, "restart": {"type": "logical", "dimension": null}, "ngm0": {"type": "integer", "dimension": null}, "niter": {"type": "integer", "dimension": null}, "nmix": {"type": "integer", "dimension": null}, "imix": {"type": "integer", "dimension": null}, "n_scf_steps": {"type": "integer", "dimension": null}, "mixing_beta": {"type": "real(dp)", "dimension": null}, "tr2": {"type": "real(dp)", "dimension": null}, "scf_error": {"type": "real(dp)", "dimension": null}, "conv_elec": {"type": "logical", "dimension": null}, "adapt_thr": {"type": "logical", "dimension": null}, "tr2_init": {"type": "real(dp)", "dimension": null}, "tr2_multi": {"type": "real(dp)", "dimension": null}, "scf_must_converge": {"type": "logical", "dimension": null}, "ethr": {"type": "real(dp)", "dimension": null}, "isolve": {"type": "integer", "dimension": null}, "david": {"type": "integer", "dimension": null}, "max_cg_iter": {"type": "integer", "dimension": null}, "diago_full_acc": {"type": "logical", "dimension": null}, "nstep": {"type": "integer", "dimension": null}, "istep": {"type": "integer", "dimension": null}, "conv_ions": {"type": "logical", "dimension": null}, "upscale": {"type": "real(dp)", "dimension": null}, "noinv": {"type": "logical", "dimension": null}, "modenum": {"type": "integer", "dimension": null}, "io_level": {"type": "integer", "dimension": null}, "iverbosity": {"type": "integer", "dimension": null}, "use_para_diag": {"type": "logical", "dimension": null}, "remove_rigid_rot": {"type": "logical", "dimension": null}, "do_makov_payne": {"type": "logical", "dimension": null}, "ortho_max": {"type": "integer", "dimension": null}, "ortho_eps": {"type": "real(dp)", "dimension": null}, "iesr": {"type": "integer", "dimension": null}, "tqr": {"type": "logical", "dimension": null}, "tq_smoothing": {"type": "logical", "dimension": null}, "tbeta_smoothing": {"type": "logical", "dimension": null}, "textfor": {"type": "logical", "dimension": null}}
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
  logical, allocatable, dimension(:) :: tranp ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: amprp ! dimensions = [":"]
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

contains
  procedure, pass :: alloc => control_flags_type_alloc
  procedure, pass :: init => control_flags_type_init
  procedure, pass :: update => control_flags_type_update
  procedure, pass :: dealloc => control_flags_type_dealloc
end type control_flags_type
