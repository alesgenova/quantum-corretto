alloc_args = {}
init_args = {"program_name": {"type": "character(len=4)", "dimension": null}, "trhor": {"type": "logical", "dimension": null}, "trhow": {"type": "logical", "dimension": null}, "tksw": {"type": "logical", "dimension": null}, "tsde": {"type": "logical", "dimension": null}, "tzeroe": {"type": "logical", "dimension": null}, "tfor": {"type": "logical", "dimension": null}, "tsdp": {"type": "logical", "dimension": null}, "tzerop": {"type": "logical", "dimension": null}, "tprnfor": {"type": "logical", "dimension": null}, "taurdr": {"type": "logical", "dimension": null}, "tv0rd": {"type": "logical", "dimension": null}, "tpre": {"type": "logical", "dimension": null}, "thdyn": {"type": "logical", "dimension": null}, "tsdc": {"type": "logical", "dimension": null}, "tzeroc": {"type": "logical", "dimension": null}, "tstress": {"type": "logical", "dimension": null}, "tortho": {"type": "logical", "dimension": null}, "timing": {"type": "logical", "dimension": null}, "memchk": {"type": "logical", "dimension": null}, "tprnsfac": {"type": "logical", "dimension": null}, "tdamp": {"type": "logical", "dimension": null}, "tdampions": {"type": "logical", "dimension": null}, "tatomicwfc": {"type": "logical", "dimension": null}, "tscreen": {"type": "logical", "dimension": null}, "twfcollect": {"type": "logical", "dimension": null}, "lkpoint_dir": {"type": "logical", "dimension": null}, "printwfc": {"type": "integer", "dimension": null}, "force_pairing": {"type": "logical", "dimension": null}, "lecrpa": {"type": "logical", "dimension": null}, "tddfpt": {"type": "logical", "dimension": null}, "smallmem": {"type": "logical", "dimension": null}, "tconvthrs": {"type": "type(convergence_criteria)", "dimension": null}, "tionstep": {"type": "logical", "dimension": null}, "nstepe": {"type": "integer", "dimension": null}, "tsteepdesc": {"type": "logical", "dimension": null}, "nbeg": {"type": "integer", "dimension": null}, "ndw": {"type": "integer", "dimension": null}, "ndr": {"type": "integer", "dimension": null}, "nomore": {"type": "integer", "dimension": null}, "iprint": {"type": "integer", "dimension": null}, "isave": {"type": "integer", "dimension": null}, "gamma_only": {"type": "logical", "dimension": null}, "dt_old": {"type": "real(dp)", "dimension": null}, "trane": {"type": "logical", "dimension": null}, "ampre": {"type": "real(dp)", "dimension": null}, "tranp": {"type": "logical", "dimension": ":"}, "amprp": {"type": "real(dp)", "dimension": ":"}, "tbeg": {"type": "logical", "dimension": null}, "t_diis": {"type": "logical", "dimension": null}, "t_diis_simple": {"type": "logical", "dimension": null}, "t_diis_rot": {"type": "logical", "dimension": null}, "tnosee": {"type": "logical", "dimension": null}, "tnoseh": {"type": "logical", "dimension": null}, "tnosep": {"type": "logical", "dimension": null}, "tcap": {"type": "logical", "dimension": null}, "tcp": {"type": "logical", "dimension": null}, "tolp": {"type": "real(dp)", "dimension": null}, "ekin_conv_thr": {"type": "real(dp)", "dimension": null}, "etot_conv_thr": {"type": "real(dp)", "dimension": null}, "forc_conv_thr": {"type": "real(dp)", "dimension": null}, "ekin_maxiter": {"type": "integer", "dimension": null}, "etot_maxiter": {"type": "integer", "dimension": null}, "forc_maxiter": {"type": "integer", "dimension": null}, "lscf": {"type": "logical", "dimension": null}, "lbfgs": {"type": "logical", "dimension": null}, "lmd": {"type": "logical", "dimension": null}, "llang": {"type": "logical", "dimension": null}, "use_SMC": {"type": "logical", "dimension": null}, "lwf": {"type": "logical", "dimension": null}, "tcpbo": {"type": "logical", "dimension": null}, "ldriver": {"type": "logical", "dimension": null}, "lwfnscf": {"type": "logical", "dimension": null}, "lwfpbe0nscf": {"type": "logical", "dimension": null}, "lbands": {"type": "logical", "dimension": null}, "lconstrain": {"type": "logical", "dimension": null}, "ldamped": {"type": "logical", "dimension": null}, "llondon": {"type": "logical", "dimension": null}, "ts_vdw": {"type": "logical", "dimension": null}, "lxdm": {"type": "logical", "dimension": null}, "restart": {"type": "logical", "dimension": null}, "ngm0": {"type": "integer", "dimension": null}, "niter": {"type": "integer", "dimension": null}, "nmix": {"type": "integer", "dimension": null}, "imix": {"type": "integer", "dimension": null}, "mixing_beta": {"type": "real(dp)", "dimension": null}, "tr2": {"type": "real(dp)", "dimension": null}, "conv_elec": {"type": "logical", "dimension": null}, "adapt_thr": {"type": "logical", "dimension": null}, "tr2_init": {"type": "real(dp)", "dimension": null}, "tr2_multi": {"type": "real(dp)", "dimension": null}, "scf_must_converge": {"type": "logical", "dimension": null}, "ethr": {"type": "real(dp)", "dimension": null}, "david": {"type": "integer", "dimension": null}, "isolve": {"type": "integer", "dimension": null}, "max_cg_iter": {"type": "integer", "dimension": null}, "diis_buff": {"type": "integer", "dimension": null}, "diis_ndim": {"type": "integer", "dimension": null}, "diago_full_acc": {"type": "logical", "dimension": null}, "alpha0": {"type": "real(dp)", "dimension": null}, "beta0": {"type": "real(dp)", "dimension": null}, "history": {"type": "integer", "dimension": null}, "pot_order": {"type": "integer", "dimension": null}, "wfc_order": {"type": "integer", "dimension": null}, "nstep": {"type": "integer", "dimension": null}, "istep": {"type": "integer", "dimension": null}, "conv_ions": {"type": "logical", "dimension": null}, "upscale": {"type": "real(dp)", "dimension": null}, "noinv": {"type": "logical", "dimension": null}, "modenum": {"type": "integer", "dimension": null}, "io_level": {"type": "integer", "dimension": null}, "iverbosity": {"type": "integer", "dimension": null}, "use_para_diag": {"type": "logical", "dimension": null}, "remove_rigid_rot": {"type": "logical", "dimension": null}, "do_makov_payne": {"type": "logical", "dimension": null}, "ortho_max": {"type": "integer", "dimension": null}, "ortho_eps": {"type": "real(dp)", "dimension": null}, "iesr": {"type": "integer", "dimension": null}, "tqr": {"type": "logical", "dimension": null}, "textfor": {"type": "logical", "dimension": null}}
type :: control_flags_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=4) :: program_name = ' '
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
  logical :: tprnsfac = .false.
  logical :: tdamp = .false.
  logical :: tdampions = .false.
  logical :: tatomicwfc = .false.
  logical :: tscreen = .false.
  logical :: twfcollect = .false.
  logical :: lkpoint_dir = .true.
  integer :: printwfc = -1
  logical :: force_pairing = .false.
  logical :: lecrpa = .false.
  logical :: tddfpt = .false.
  logical :: smallmem = .false.
  type(convergence_criteria) :: tconvthrs
  logical :: tionstep = .false.
  integer :: nstepe = 1
  logical :: tsteepdesc = .false.
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
  logical :: t_diis = .false.
  logical :: t_diis_simple = .false.
  logical :: t_diis_rot = .false.
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
  logical :: llang = .false.
  logical :: use_SMC = .false.
  logical :: lwf = .false.
  logical :: tcpbo = .false.
  logical :: ldriver = .false.
  logical :: lwfnscf = .false.
  logical :: lwfpbe0nscf = .false.
  logical :: lbands = .false.
  logical :: lconstrain = .false.
  logical :: ldamped = .false.
  logical :: llondon = .false.
  logical :: ts_vdw = .false.
  logical :: lxdm = .false.
  logical :: restart = .false.
  integer :: ngm0
  integer :: niter
  integer :: nmix
  integer :: imix
  real(dp) :: mixing_beta
  real(dp) :: tr2
  logical :: conv_elec
  logical :: adapt_thr
  real(dp) :: tr2_init
  real(dp) :: tr2_multi
  logical :: scf_must_converge
  real(dp) :: ethr
  integer :: david
  integer :: isolve
  integer :: max_cg_iter
  integer :: diis_buff
  integer :: diis_ndim
  logical :: diago_full_acc = .false.
  real(dp) :: alpha0
  real(dp) :: beta0
  integer :: history
  integer :: pot_order = 0
  integer :: wfc_order = 0
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
  logical :: textfor = .false.

contains
  procedure, pass :: alloc => control_flags_type_alloc
  procedure, pass :: init => control_flags_type_init
  procedure, pass :: update => control_flags_type_update
  procedure, pass :: dealloc => control_flags_type_dealloc
end type control_flags_type
