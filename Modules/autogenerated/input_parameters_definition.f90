type :: input_parameters_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=80) :: title = ' '
  character(len=80) :: calculation = 'none'
  character(len=80), dimension(14) :: calculation_allowed
  character(len=80) :: verbosity = 'default'
  character(len=80), dimension(6) :: verbosity_allowed
  character(len=80) :: restart_mode = 'restart'
  character(len=80), dimension(3) :: restart_mode_allowed
  integer :: nstep = 10
  integer :: iprint = 10
  integer :: isave = 100
  logical :: tstress = .true.
  logical :: tprnfor = .true.
  real(dp) :: dt = 1.0_dp
  integer :: ndr = 50
  integer :: ndw = 50
  character(len=256) :: outdir = './'
  character(len=256) :: prefix = 'prefix'
  character(len=256) :: pseudo_dir = './'
  real(dp) :: refg = 0.05_dp
  character(len=256) :: wfcdir = 'undefined'
  real(dp) :: max_seconds = 1.0e+7_dp
  real(dp) :: ekin_conv_thr = 1.0e-5_dp
  real(dp) :: etot_conv_thr = 1.0e-4_dp
  real(dp) :: forc_conv_thr = 1.0e-3_dp
  character(len=80) :: disk_io = 'default'
  logical :: tefield = .false.
  logical :: monopole = .false.
  logical :: tefield2 = .false.
  logical :: lelfield = .false.
  logical :: lorbm = .false.
  logical :: dipfield = .false.
  logical :: lberry = .false.
  logical :: lcalc_z2 = .false.
  real(dp) :: z2_m_threshold = 0.8d0
  real(dp) :: z2_z_threshold = 0.05d0
  integer :: gdir = 0
  integer :: nppstr = 0
  integer :: nberrycyc = 1
  logical :: wf_collect = .false.
  logical :: saverho = .true.
  logical :: tabps = .false.
  logical :: lkpoint_dir = .true.
  logical :: use_wannier = .false.
  logical :: lecrpa = .false.
  logical :: tqmmm = .false.
  character(len=256) :: vdw_table_name = ' '
  character(len=10) :: point_label_type = 'sc'
  character(len=80) :: memory = 'default'
  character(len=80), dimension(3) :: memory_allowed
  logical :: lfcpopt = .false.
  logical :: lfcpdyn = .false.
  character(len=256) :: input_xml_schema_file = ' '
  integer :: ibrav = 14
  real(dp), dimension(6) :: celldm = 0.0_dp
  real(dp) :: a = 0.0_dp
  real(dp) :: c = 0.0_dp
  real(dp) :: b = 0.0_dp
  real(dp) :: cosab = 0.0_dp
  real(dp) :: cosac = 0.0_dp
  real(dp) :: cosbc = 0.0_dp
  real(dp) :: ref_alat = 0.0_dp
  integer :: nat = 0
  integer :: ntyp = 0
  integer :: nbnd = 0
  real(dp) :: tot_charge = 0.0_dp
  real(dp) :: tot_magnetization = -1.0_dp
  real(dp) :: ecutwfc = 0.0_dp
  real(dp) :: ecutrho = 0.0_dp
  integer :: nr1 = 0
  integer :: nr2 = 0
  integer :: nr3 = 0
  integer :: nr1s = 0
  integer :: nr2s = 0
  integer :: nr3s = 0
  integer :: nr1b = 0
  integer :: nr2b = 0
  integer :: nr3b = 0
  character(len=80) :: occupations = 'fixed'
  character(len=80) :: smearing = 'gaussian'
  real(dp) :: degauss = 0.0_dp
  integer :: nspin = 1
  logical :: nosym = .true.
  logical :: noinv = .false.
  logical :: nosym_evc = .false.
  logical :: force_symmorphic = .false.
  logical :: use_all_frac = .false.
  real(dp) :: ecfixed = 0.0_dp
  real(dp) :: qcutz = 0.0_dp
  real(dp) :: q2sigma = 0.0_dp
  character(len=80) :: input_dft = 'none'
  real(dp), dimension(nsx) :: starting_magnetization = 0.0_dp
  logical :: lda_plus_u = .false.
  integer :: lda_plus_u_kind = 0
  integer :: nspinx = 2
  real(dp), dimension(lqmax,nspinx,nsx) :: starting_ns_eigenvalue = -1.0_dp
  real(dp), dimension(nsx) :: hubbard_u = 0.0_dp
  real(dp), dimension(nsx) :: hubbard_j0 = 0.0_dp
  real(dp), dimension(3,nsx) :: hubbard_j = 0.0_dp
  real(dp), dimension(nsx) :: hubbard_alpha = 0.0_dp
  real(dp), dimension(nsx) :: hubbard_beta = 0.0_dp
  character(len=80) :: U_projection_type = 'atomic'
  logical :: la2F = .false.
  logical :: step_pen = .false.
  real(dp), dimension(10,nspinx) :: A_pen = 0.0_dp
  real(dp), dimension(10) :: sigma_pen = 0.01_dp
  real(dp), dimension(10) :: alpha_pen = 0.0_dp
  real(dp) :: exx_fraction = -1.0_dp
  real(dp) :: screening_parameter = -1.0_dp
  integer :: nqx1 = 0
  integer :: nqx2 = 0
  integer :: nqx3 = 0
  real(dp) :: gau_parameter = -1.0_dp
  character(len=80) :: exxdiv_treatment = 'gygi-baldereschi'
  character(len=80), dimension(6) :: exxdiv_treatment_allowed
  logical :: x_gamma_extrapolation = .true.
  real(dp) :: yukawa = 0.0_dp
  real(dp) :: ecutvcut = 0.0_dp
  logical :: adaptive_thr = .false.
  real(dp) :: conv_thr_init = 0.001_dp
  real(dp) :: conv_thr_multi = 0.1_dp
  real(dp) :: ecutfock = -1.d0
  integer :: edir = 0
  real(dp) :: emaxpos = 0.0_dp
  real(dp) :: eopreg = 0.0_dp
  real(dp) :: eamp = 0.0_dp
  real(dp) :: zmon = 0.5
  logical :: relaxz = .false.
  logical :: block = .false.
  real(dp) :: block_1 = 0.45
  real(dp) :: block_2 = 0.55
  real(dp) :: block_height = 0.1
  logical :: noncolin = .false.
  logical :: lspinorb = .false.
  logical :: lforcet = .false.
  logical :: starting_spin_angle = .false.
  real(dp) :: lambda = 1.0_dp
  real(dp), dimension(3) :: fixed_magnetization = 0.0_dp
  real(dp), dimension(nsx) :: angle1 = 0.0_dp
  real(dp), dimension(nsx) :: angle2 = 0.0_dp
  integer :: report = 1
  logical :: no_t_rev = .false.
  character(len=80) :: constrained_magnetization = 'none'
  real(dp), dimension(3) :: B_field = 0.0_dp
  character(len=80) :: sic = 'none'
  real(dp) :: sic_epsilon = 0.0_dp
  real(dp) :: sic_alpha = 0.0_dp
  logical :: force_pairing = .false.
  logical :: spline_ps = .false.
  logical :: one_atom_occupations = .false.
  character(len=80) :: assume_isolated = 'none'
  character(len=80) :: vdw_corr = 'none'
  logical :: london = .false.
  real(dp) :: london_s6 = 0.75_dp 
  real(dp) :: london_rcut = 200.00_dp 
  real(dp), dimension(nsx) :: london_c6 = -1.0_dp
  real(dp), dimension(nsx) :: london_rvdw = -1.0_dp
  logical :: ts_vdw = .false.
  logical :: ts_vdw_isolated = .false.
  real(dp) :: ts_vdw_econv_thr = 1.0e-6_dp
  logical :: xdm = .false.
  real(dp) :: xdm_a1 = 0.6836_dp
  real(dp) :: xdm_a2 = 1.5045_dp
  character(len=3) :: esm_bc = 'pbc'
  real(dp) :: esm_efield = 0.0_dp
  real(dp) :: esm_w = 0.0_dp
  real(dp) :: esm_a = 0.0_dp
  real(dp) :: esm_zb = 0.0_dp
  integer :: esm_nfit = 4
  logical :: esm_debug = .false.
  integer :: esm_debug_gpmax = 0
  real(dp) :: fcp_mu = 0.0_dp
  real(dp) :: fcp_mass = 10000.0_dp
  real(dp) :: fcp_tempw = 300.0_dp
  real(dp) :: fcp_relax_step = 0.5_dp
  real(dp) :: fcp_relax_crit = 0.001_dp
  integer :: space_group = 0
  logical :: uniqueb = .false.
  integer :: origin_choice = 1
  logical :: rhombohedral = .true.
  real(dp) :: emass = 0.0_dp
  real(dp) :: emass_cutoff = 0.0_dp
  character(len=80) :: orthogonalization = 'ortho'
  real(dp) :: ortho_eps = 1.e-9_dp
  integer :: ortho_max = 50
  integer :: electron_maxstep = 1000
  logical :: scf_must_converge = .true.
  character(len=80) :: electron_dynamics = 'none'
  character(len=80), dimension(7) :: electron_dynamics_allowed
  real(dp) :: electron_damping = 0.0_dp
  character(len=80) :: electron_velocities = 'default'
  character(len=80) :: electron_temperature = 'not_controlled'
  real(dp) :: ekincw = 0.0_dp
  real(dp) :: fnosee = 0.0_dp
  character(len=80) :: startingwfc = 'random'
  real(dp) :: ampre = 0.0_dp
  real(dp) :: grease = 0.0_dp
  integer :: diis_size = 0
  integer :: diis_nreset = 0
  real(dp) :: diis_hcut = 0.0_dp
  real(dp) :: diis_wthr = 1.e-4_dp
  real(dp) :: diis_delt = 1.0_dp
  integer :: diis_maxstep = 100
  logical :: diis_rot = .false.
  real(dp) :: diis_fthr = 1.e-3_dp
  real(dp) :: diis_temp = 0.0_dp
  real(dp) :: diis_achmix = 0.0_dp
  real(dp) :: diis_g0chmix = 0.0_dp
  integer :: diis_nchmix = 0
  real(dp) :: diis_g1chmix = 0.0_dp
  integer, dimension(3) :: diis_nrot = 0
  real(dp), dimension(3) :: diis_rothr = 1.e-4_dp
  real(dp) :: diis_ethr = 1.e-4_dp
  logical :: diis_chguess = .false.
  character(len=80) :: mixing_mode = 'default'
  real(dp) :: mixing_beta = 0.0_dp
  integer :: mixing_ndim = 0
  character(len=80) :: diagonalization = 'david'
  real(dp) :: diago_thr_init = 0.0_dp
  integer :: diago_cg_maxiter = 100
  integer :: diago_david_ndim = 4
  logical :: diago_full_acc = .false.
  real(dp) :: conv_thr = 1.e-6_dp
  integer :: mixing_fixed_ns = 0
  character(len=80) :: startingpot = 'potfile'
  integer :: n_inner = 2
  integer :: niter_cold_restart = 1
  real(dp) :: lambda_cold
  logical :: tgrand = .false.
  real(dp) :: fermi_energy = 0.0_dp
  character(len=80) :: rotation_dynamics = "line-minimization"
  character(len=80) :: occupation_dynamics = "line-minimization"
  real(dp) :: rotmass = 0
  real(dp) :: occmass = 0
  real(dp) :: occupation_damping = 0
  real(dp) :: rotation_damping = 0
  logical :: tcg = .true.
  integer :: maxiter = 100
  real(dp) :: etresh = 1.0e-7_dp
  real(dp) :: passop = 0.3_dp
  integer :: niter_cg_restart
  integer :: epol = 3
  real(dp) :: efield = 0.0_dp
  logical :: real_space = .false.
  real(dp), dimension(3) :: efield_cart
  character(len=80) :: efield_phase = 'none'
  integer :: epol2 = 3
  real(dp) :: efield2 = 0.0_dp
  logical :: tqr = .false.
  logical :: tq_smoothing = .false.
  logical :: tbeta_smoothing = .false.
  logical :: occupation_constraints = .false.
  logical :: tcpbo = .false.
  real(dp) :: emass_emin = 0.0_dp
  real(dp) :: emass_cutoff_emin = 0.0_dp
  real(dp) :: electron_damping_emin = 0.0_dp
  real(dp) :: dt_emin = 0.0_dp
  character(256) :: external_potential = ''
  character(len=80) :: ion_dynamics = 'none'
  character(len=80), dimension(9) :: ion_dynamics_allowed
  real(dp), dimension(nsx) :: ion_radius = 0.5_dp
  integer :: iesr = 1
  real(dp) :: ion_damping = 0.2_dp
  character(len=80) :: ion_positions = 'default'
  character(len=80) :: ion_velocities = 'default'
  character(len=80) :: ion_temperature = 'not_controlled'
  real(dp) :: tempw = 300.0_dp
  integer :: nhclm = 4
  real(dp), dimension(nhclm) :: fnosep = 50.0_dp
  integer :: nhpcl = 0
  integer :: nhptyp = 0
  integer, dimension(nsx) :: nhgrp = 0
  integer :: ndega = 0
  real(dp) :: tolp = 50.0_dp
  real(dp), dimension(nsx) :: fnhscl = -1.0_dp
  logical, dimension(nsx) :: tranp = .false.
  real(dp), dimension(nsx) :: amprp = 0.0_dp
  real(dp) :: greasp = 0.0_dp
  integer :: ion_nstepe = 1
  integer :: ion_maxstep = 1000
  real(dp) :: upscale = 100.0_dp
  character(len=80) :: pot_extrapolation = 'default'
  character(len=80) :: wfc_extrapolation = 'default'
  logical :: refold_pos
  logical :: remove_rigid_rot = .false.
  real(dp) :: delta_t = 1.0_dp
  integer :: nraise = 1
  integer :: bfgs_ndim = 1
  real(dp) :: trust_radius_max = 0.8_dp
  real(dp) :: trust_radius_min = 1.e-3_dp
  real(dp) :: trust_radius_ini = 0.5_dp
  real(dp) :: w_1 = 0.5e-1_dp
  real(dp) :: w_2 = 0.5_dp
  logical :: l_mplathe = .false.
  integer :: n_muller = 0
  integer :: np_muller = 1
  logical :: l_exit_muller = .false.
  character(len=80) :: cell_parameters = 'default'
  character(len=80) :: cell_dynamics = 'none'
  character(len=80), dimension(7) :: cell_dynamics_allowed
  character(len=80) :: cell_velocities = 'default'
  real(dp) :: press = 0.0_dp
  real(dp) :: wmass = 0.0_dp
  character(len=80) :: cell_temperature = 'not_controlled'
  real(dp) :: temph = 0.0_dp
  real(dp) :: fnoseh = 1.0_dp
  real(dp) :: greash = 0.0_dp
  character(len=80) :: cell_dofree = 'all'
  real(dp) :: cell_factor = 0.0_dp
  integer :: cell_nstepe = 1
  real(dp) :: cell_damping = 0.1_dp
  real(dp) :: press_conv_thr = 0.5_dp
  logical :: abivol = .false.
  logical :: abisur = .false.
  logical :: pvar = .false.
  logical :: fill_vac = .false.
  logical :: scale_at = .false.
  logical :: t_gauss = .false.
  logical :: jellium = .false.
  logical, dimension(nsx) :: cntr = .false.
  real(dp) :: P_ext = 0.0_dp
  real(dp) :: P_in = 0.0_dp
  real(dp) :: P_fin = 0.0_dp
  real(dp) :: rho_thr = 0.0_dp
  real(dp), dimension(nsx) :: step_rad = 0.0_dp
  real(dp) :: Surf_t = 0.0_dp
  real(dp) :: dthr = 0.0_dp
  real(dp) :: R_j = 0.0_dp
  real(dp) :: h_j = 0.0_dp
  real(dp) :: delta_eps = 0.0_dp
  real(dp) :: delta_sigma = 0.0_dp
  integer :: n_cntr = 0
  integer :: axis = 0
  logical :: wf_efield
  logical :: wf_switch
  integer :: sw_len
  real(dp) :: efx0
  real(dp) :: efy0
  real(dp) :: efz0
  real(dp) :: efx1
  real(dp) :: efy1
  real(dp) :: efz1
  integer :: wfsd
  real(dp) :: wfdt
  real(dp) :: maxwfdt
  real(dp) :: wf_q
  real(dp) :: wf_friction
  integer :: vnbsp
  integer :: exx_neigh
  real(dp) :: exx_poisson_eps
  real(dp) :: exx_dis_cutoff
  real(dp) :: exx_ps_rcut_self
  real(dp) :: exx_ps_rcut_pair
  real(dp) :: exx_me_rcut_self
  real(dp) :: exx_me_rcut_pair
  integer :: nit
  integer :: nsd
  integer :: nsteps
  real(dp) :: tolw
  logical :: adapt
  integer :: calwf
  integer :: nwf
  integer :: wffort
  logical :: writev
  logical :: plot_wannier = .false.
  logical :: use_energy_int = .false.
  logical :: print_wannier_coeff = .false.
  integer :: nwanx = 50
  integer :: nwan
  integer :: plot_wan_num = 0
  integer :: plot_wan_spin = 1
  real(dp), dimension(nwanx,2) :: constrain_pot
  character(len=3), dimension(nsx) :: atom_label = 'xx'
  character(len=80), dimension(nsx) :: atom_pfile = 'yy'
  real(dp), dimension(nsx) :: atom_mass = 0.0_dp
  logical :: taspc = .false.
  logical :: tkpoints = .false.
  logical :: tforces = .false.
  logical :: tocc = .false.
  logical :: tcell = .false.
  logical :: tionvel = .false.
  logical :: tconstr = .false.
  logical :: tksout = .false.
  logical :: ttemplate = .false.
  logical :: twannier = .false.
  real(dp), allocatable, dimension(:,:) :: rd_pos
  integer, allocatable, dimension(:) :: sp_pos
  integer, allocatable, dimension(:,:) :: if_pos
  integer, allocatable, dimension(:) :: na_inp
  logical :: tapos = .false.
  logical :: lsg = .false.
  character(len=80) :: atomic_positions = 'crystal'
  real(dp), allocatable, dimension(:,:) :: rd_vel
  integer, allocatable, dimension(:) :: sp_vel
  logical :: tavel = .false.
  real(dp), allocatable, dimension(:,:) :: rd_for
  logical :: tk_inp = .false.
  real(dp), allocatable, dimension(:,:) :: xk
  real(dp), allocatable, dimension(:) :: wk
  integer :: nkstot = 0
  integer :: nk1 = 0
  integer :: nk2 = 0
  integer :: nk3 = 0
  integer :: k1 = 0
  integer :: k2 = 0
  integer :: k3 = 0
  character(len=80) :: k_points = 'gamma'
  real(dp), allocatable, dimension(:,:) :: f_inp
  logical :: tf_inp = .false.
  real(dp), dimension(3,3) :: rd_ht = 0.0_dp
  character(len=80) :: cell_units = 'none'
  logical :: trd_ht = .false.
  real(dp), dimension(3,3) :: rd_ref_ht = 0.0_dp
  character(len=80) :: ref_cell_units = 'alat'
  logical :: ref_cell = .false.
  integer :: nc_fields = 4
  integer :: nconstr_inp = 0
  real(dp) :: constr_tol_inp = 1.e-6_dp
  character(len=20), allocatable, dimension(:) :: constr_type_inp
  real(dp), allocatable, dimension(:,:) :: constr_inp
  real(dp), allocatable, dimension(:) :: constr_target_inp
  logical, allocatable, dimension(:) :: constr_target_set
  integer, allocatable, dimension(:, :) :: iprnks
  integer, dimension(nspinx) :: nprnks = 0
  integer :: nwf_max = 1000
  integer, dimension(nwf_max) :: wannier_index
  type(wannier_data), dimension(nwanx,2) :: wan_data
  logical :: xmloutput = .false.
  logical :: xmloutput = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type input_parameters_type
