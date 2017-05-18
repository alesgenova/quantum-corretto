alloc_args = {}
init_args = {"title": {"type": "character(len=80)", "dimension": null}, "calculation": {"type": "character(len=80)", "dimension": null}, "calculation_allowed": {"type": "character(len=80)", "dimension": "14"}, "verbosity": {"type": "character(len=80)", "dimension": null}, "verbosity_allowed": {"type": "character(len=80)", "dimension": "6"}, "restart_mode": {"type": "character(len=80)", "dimension": null}, "restart_mode_allowed": {"type": "character(len=80)", "dimension": "3"}, "nstep": {"type": "integer", "dimension": null}, "iprint": {"type": "integer", "dimension": null}, "isave": {"type": "integer", "dimension": null}, "tstress": {"type": "logical", "dimension": null}, "tprnfor": {"type": "logical", "dimension": null}, "dt": {"type": "real(dp)", "dimension": null}, "ndr": {"type": "integer", "dimension": null}, "ndw": {"type": "integer", "dimension": null}, "outdir": {"type": "character(len=256)", "dimension": null}, "prefix": {"type": "character(len=256)", "dimension": null}, "pseudo_dir": {"type": "character(len=256)", "dimension": null}, "refg": {"type": "real(dp)", "dimension": null}, "wfcdir": {"type": "character(len=256)", "dimension": null}, "max_seconds": {"type": "real(dp)", "dimension": null}, "ekin_conv_thr": {"type": "real(dp)", "dimension": null}, "etot_conv_thr": {"type": "real(dp)", "dimension": null}, "forc_conv_thr": {"type": "real(dp)", "dimension": null}, "disk_io": {"type": "character(len=80)", "dimension": null}, "tefield": {"type": "logical", "dimension": null}, "monopole": {"type": "logical", "dimension": null}, "tefield2": {"type": "logical", "dimension": null}, "lelfield": {"type": "logical", "dimension": null}, "lorbm": {"type": "logical", "dimension": null}, "dipfield": {"type": "logical", "dimension": null}, "lberry": {"type": "logical", "dimension": null}, "lcalc_z2": {"type": "logical", "dimension": null}, "z2_m_threshold": {"type": "real(dp)", "dimension": null}, "z2_z_threshold": {"type": "real(dp)", "dimension": null}, "gdir": {"type": "integer", "dimension": null}, "nppstr": {"type": "integer", "dimension": null}, "nberrycyc": {"type": "integer", "dimension": null}, "wf_collect": {"type": "logical", "dimension": null}, "saverho": {"type": "logical", "dimension": null}, "tabps": {"type": "logical", "dimension": null}, "lkpoint_dir": {"type": "logical", "dimension": null}, "use_wannier": {"type": "logical", "dimension": null}, "lecrpa": {"type": "logical", "dimension": null}, "tqmmm": {"type": "logical", "dimension": null}, "vdw_table_name": {"type": "character(len=256)", "dimension": null}, "point_label_type": {"type": "character(len=10)", "dimension": null}, "memory": {"type": "character(len=80)", "dimension": null}, "memory_allowed": {"type": "character(len=80)", "dimension": "3"}, "lfcpopt": {"type": "logical", "dimension": null}, "lfcpdyn": {"type": "logical", "dimension": null}, "input_xml_schema_file": {"type": "character(len=256)", "dimension": null}, "ibrav": {"type": "integer", "dimension": null}, "celldm": {"type": "real(dp)", "dimension": "6"}, "a": {"type": "real(dp)", "dimension": null}, "c": {"type": "real(dp)", "dimension": null}, "b": {"type": "real(dp)", "dimension": null}, "cosab": {"type": "real(dp)", "dimension": null}, "cosac": {"type": "real(dp)", "dimension": null}, "cosbc": {"type": "real(dp)", "dimension": null}, "ref_alat": {"type": "real(dp)", "dimension": null}, "nat": {"type": "integer", "dimension": null}, "ntyp": {"type": "integer", "dimension": null}, "nbnd": {"type": "integer", "dimension": null}, "tot_charge": {"type": "real(dp)", "dimension": null}, "tot_magnetization": {"type": "real(dp)", "dimension": null}, "ecutwfc": {"type": "real(dp)", "dimension": null}, "ecutrho": {"type": "real(dp)", "dimension": null}, "nr1": {"type": "integer", "dimension": null}, "nr2": {"type": "integer", "dimension": null}, "nr3": {"type": "integer", "dimension": null}, "nr1s": {"type": "integer", "dimension": null}, "nr2s": {"type": "integer", "dimension": null}, "nr3s": {"type": "integer", "dimension": null}, "nr1b": {"type": "integer", "dimension": null}, "nr2b": {"type": "integer", "dimension": null}, "nr3b": {"type": "integer", "dimension": null}, "occupations": {"type": "character(len=80)", "dimension": null}, "smearing": {"type": "character(len=80)", "dimension": null}, "degauss": {"type": "real(dp)", "dimension": null}, "nspin": {"type": "integer", "dimension": null}, "nosym": {"type": "logical", "dimension": null}, "noinv": {"type": "logical", "dimension": null}, "nosym_evc": {"type": "logical", "dimension": null}, "force_symmorphic": {"type": "logical", "dimension": null}, "use_all_frac": {"type": "logical", "dimension": null}, "ecfixed": {"type": "real(dp)", "dimension": null}, "qcutz": {"type": "real(dp)", "dimension": null}, "q2sigma": {"type": "real(dp)", "dimension": null}, "input_dft": {"type": "character(len=80)", "dimension": null}, "starting_magnetization": {"type": "real(dp)", "dimension": ":"}, "lda_plus_u": {"type": "logical", "dimension": null}, "lda_plus_u_kind": {"type": "integer", "dimension": null}, "nspinx": {"type": "integer", "dimension": null}, "starting_ns_eigenvalue": {"type": "real(dp)", "dimension": ":,:,:"}, "hubbard_u": {"type": "real(dp)", "dimension": ":"}, "hubbard_j0": {"type": "real(dp)", "dimension": ":"}, "hubbard_j": {"type": "real(dp)", "dimension": ":,:"}, "hubbard_alpha": {"type": "real(dp)", "dimension": ":"}, "hubbard_beta": {"type": "real(dp)", "dimension": ":"}, "U_projection_type": {"type": "character(len=80)", "dimension": null}, "la2F": {"type": "logical", "dimension": null}, "step_pen": {"type": "logical", "dimension": null}, "A_pen": {"type": "real(dp)", "dimension": ":,:"}, "sigma_pen": {"type": "real(dp)", "dimension": "10"}, "alpha_pen": {"type": "real(dp)", "dimension": "10"}, "exx_fraction": {"type": "real(dp)", "dimension": null}, "screening_parameter": {"type": "real(dp)", "dimension": null}, "nqx1": {"type": "integer", "dimension": null}, "nqx2": {"type": "integer", "dimension": null}, "nqx3": {"type": "integer", "dimension": null}, "gau_parameter": {"type": "real(dp)", "dimension": null}, "exxdiv_treatment": {"type": "character(len=80)", "dimension": null}, "exxdiv_treatment_allowed": {"type": "character(len=80)", "dimension": "6"}, "x_gamma_extrapolation": {"type": "logical", "dimension": null}, "yukawa": {"type": "real(dp)", "dimension": null}, "ecutvcut": {"type": "real(dp)", "dimension": null}, "adaptive_thr": {"type": "logical", "dimension": null}, "conv_thr_init": {"type": "real(dp)", "dimension": null}, "conv_thr_multi": {"type": "real(dp)", "dimension": null}, "ecutfock": {"type": "real(dp)", "dimension": null}, "edir": {"type": "integer", "dimension": null}, "emaxpos": {"type": "real(dp)", "dimension": null}, "eopreg": {"type": "real(dp)", "dimension": null}, "eamp": {"type": "real(dp)", "dimension": null}, "zmon": {"type": "real(dp)", "dimension": null}, "relaxz": {"type": "logical", "dimension": null}, "block": {"type": "logical", "dimension": null}, "block_1": {"type": "real(dp)", "dimension": null}, "block_2": {"type": "real(dp)", "dimension": null}, "block_height": {"type": "real(dp)", "dimension": null}, "noncolin": {"type": "logical", "dimension": null}, "lspinorb": {"type": "logical", "dimension": null}, "lforcet": {"type": "logical", "dimension": null}, "starting_spin_angle": {"type": "logical", "dimension": null}, "lambda": {"type": "real(dp)", "dimension": null}, "fixed_magnetization": {"type": "real(dp)", "dimension": "3"}, "angle1": {"type": "real(dp)", "dimension": ":"}, "angle2": {"type": "real(dp)", "dimension": ":"}, "report": {"type": "integer", "dimension": null}, "no_t_rev": {"type": "logical", "dimension": null}, "constrained_magnetization": {"type": "character(len=80)", "dimension": null}, "B_field": {"type": "real(dp)", "dimension": "3"}, "sic": {"type": "character(len=80)", "dimension": null}, "sic_epsilon": {"type": "real(dp)", "dimension": null}, "sic_alpha": {"type": "real(dp)", "dimension": null}, "force_pairing": {"type": "logical", "dimension": null}, "spline_ps": {"type": "logical", "dimension": null}, "one_atom_occupations": {"type": "logical", "dimension": null}, "assume_isolated": {"type": "character(len=80)", "dimension": null}, "vdw_corr": {"type": "character(len=80)", "dimension": null}, "london": {"type": "logical", "dimension": null}, "london_s6": {"type": "real(dp)", "dimension": null}, "london_rcut": {"type": "real(dp)", "dimension": null}, "london_c6": {"type": "real(dp)", "dimension": ":"}, "london_rvdw": {"type": "real(dp)", "dimension": ":"}, "ts_vdw": {"type": "logical", "dimension": null}, "ts_vdw_isolated": {"type": "logical", "dimension": null}, "ts_vdw_econv_thr": {"type": "real(dp)", "dimension": null}, "xdm": {"type": "logical", "dimension": null}, "xdm_a1": {"type": "real(dp)", "dimension": null}, "xdm_a2": {"type": "real(dp)", "dimension": null}, "esm_bc": {"type": "character(len=3)", "dimension": null}, "esm_efield": {"type": "real(dp)", "dimension": null}, "esm_w": {"type": "real(dp)", "dimension": null}, "esm_a": {"type": "real(dp)", "dimension": null}, "esm_zb": {"type": "real(dp)", "dimension": null}, "esm_nfit": {"type": "integer", "dimension": null}, "esm_debug": {"type": "logical", "dimension": null}, "esm_debug_gpmax": {"type": "integer", "dimension": null}, "fcp_mu": {"type": "real(dp)", "dimension": null}, "fcp_mass": {"type": "real(dp)", "dimension": null}, "fcp_tempw": {"type": "real(dp)", "dimension": null}, "fcp_relax_step": {"type": "real(dp)", "dimension": null}, "fcp_relax_crit": {"type": "real(dp)", "dimension": null}, "space_group": {"type": "integer", "dimension": null}, "uniqueb": {"type": "logical", "dimension": null}, "origin_choice": {"type": "integer", "dimension": null}, "rhombohedral": {"type": "logical", "dimension": null}, "emass": {"type": "real(dp)", "dimension": null}, "emass_cutoff": {"type": "real(dp)", "dimension": null}, "orthogonalization": {"type": "character(len=80)", "dimension": null}, "ortho_eps": {"type": "real(dp)", "dimension": null}, "ortho_max": {"type": "integer", "dimension": null}, "electron_maxstep": {"type": "integer", "dimension": null}, "scf_must_converge": {"type": "logical", "dimension": null}, "electron_dynamics": {"type": "character(len=80)", "dimension": null}, "electron_dynamics_allowed": {"type": "character(len=80)", "dimension": "7"}, "electron_damping": {"type": "real(dp)", "dimension": null}, "electron_velocities": {"type": "character(len=80)", "dimension": null}, "electron_temperature": {"type": "character(len=80)", "dimension": null}, "ekincw": {"type": "real(dp)", "dimension": null}, "fnosee": {"type": "real(dp)", "dimension": null}, "startingwfc": {"type": "character(len=80)", "dimension": null}, "ampre": {"type": "real(dp)", "dimension": null}, "grease": {"type": "real(dp)", "dimension": null}, "diis_size": {"type": "integer", "dimension": null}, "diis_nreset": {"type": "integer", "dimension": null}, "diis_hcut": {"type": "real(dp)", "dimension": null}, "diis_wthr": {"type": "real(dp)", "dimension": null}, "diis_delt": {"type": "real(dp)", "dimension": null}, "diis_maxstep": {"type": "integer", "dimension": null}, "diis_rot": {"type": "logical", "dimension": null}, "diis_fthr": {"type": "real(dp)", "dimension": null}, "diis_temp": {"type": "real(dp)", "dimension": null}, "diis_achmix": {"type": "real(dp)", "dimension": null}, "diis_g0chmix": {"type": "real(dp)", "dimension": null}, "diis_nchmix": {"type": "integer", "dimension": null}, "diis_g1chmix": {"type": "real(dp)", "dimension": null}, "diis_nrot": {"type": "integer", "dimension": "3"}, "diis_rothr": {"type": "real(dp)", "dimension": "3"}, "diis_ethr": {"type": "real(dp)", "dimension": null}, "diis_chguess": {"type": "logical", "dimension": null}, "mixing_mode": {"type": "character(len=80)", "dimension": null}, "mixing_beta": {"type": "real(dp)", "dimension": null}, "mixing_ndim": {"type": "integer", "dimension": null}, "diagonalization": {"type": "character(len=80)", "dimension": null}, "diago_thr_init": {"type": "real(dp)", "dimension": null}, "diago_cg_maxiter": {"type": "integer", "dimension": null}, "diago_david_ndim": {"type": "integer", "dimension": null}, "diago_full_acc": {"type": "logical", "dimension": null}, "conv_thr": {"type": "real(dp)", "dimension": null}, "mixing_fixed_ns": {"type": "integer", "dimension": null}, "startingpot": {"type": "character(len=80)", "dimension": null}, "n_inner": {"type": "integer", "dimension": null}, "niter_cold_restart": {"type": "integer", "dimension": null}, "lambda_cold": {"type": "real(dp)", "dimension": null}, "tgrand": {"type": "logical", "dimension": null}, "fermi_energy": {"type": "real(dp)", "dimension": null}, "rotation_dynamics": {"type": "character(len=80)", "dimension": null}, "occupation_dynamics": {"type": "character(len=80)", "dimension": null}, "rotmass": {"type": "real(dp)", "dimension": null}, "occmass": {"type": "real(dp)", "dimension": null}, "occupation_damping": {"type": "real(dp)", "dimension": null}, "rotation_damping": {"type": "real(dp)", "dimension": null}, "tcg": {"type": "logical", "dimension": null}, "maxiter": {"type": "integer", "dimension": null}, "etresh": {"type": "real(dp)", "dimension": null}, "passop": {"type": "real(dp)", "dimension": null}, "niter_cg_restart": {"type": "integer", "dimension": null}, "epol": {"type": "integer", "dimension": null}, "efield": {"type": "real(dp)", "dimension": null}, "real_space": {"type": "logical", "dimension": null}, "efield_cart": {"type": "real(dp)", "dimension": "3"}, "efield_phase": {"type": "character(len=80)", "dimension": null}, "epol2": {"type": "integer", "dimension": null}, "efield2": {"type": "real(dp)", "dimension": null}, "tqr": {"type": "logical", "dimension": null}, "tq_smoothing": {"type": "logical", "dimension": null}, "tbeta_smoothing": {"type": "logical", "dimension": null}, "occupation_constraints": {"type": "logical", "dimension": null}, "tcpbo": {"type": "logical", "dimension": null}, "emass_emin": {"type": "real(dp)", "dimension": null}, "emass_cutoff_emin": {"type": "real(dp)", "dimension": null}, "electron_damping_emin": {"type": "real(dp)", "dimension": null}, "dt_emin": {"type": "real(dp)", "dimension": null}, "external_potential": {"type": "character(256)", "dimension": null}, "ion_dynamics": {"type": "character(len=80)", "dimension": null}, "ion_dynamics_allowed": {"type": "character(len=80)", "dimension": "9"}, "ion_radius": {"type": "real(dp)", "dimension": ":"}, "iesr": {"type": "integer", "dimension": null}, "ion_damping": {"type": "real(dp)", "dimension": null}, "ion_positions": {"type": "character(len=80)", "dimension": null}, "ion_velocities": {"type": "character(len=80)", "dimension": null}, "ion_temperature": {"type": "character(len=80)", "dimension": null}, "tempw": {"type": "real(dp)", "dimension": null}, "nhclm": {"type": "integer", "dimension": null}, "fnosep": {"type": "real(dp)", "dimension": ":"}, "nhpcl": {"type": "integer", "dimension": null}, "nhptyp": {"type": "integer", "dimension": null}, "nhgrp": {"type": "integer", "dimension": ":"}, "ndega": {"type": "integer", "dimension": null}, "tolp": {"type": "real(dp)", "dimension": null}, "fnhscl": {"type": "real(dp)", "dimension": ":"}, "tranp": {"type": "logical", "dimension": ":"}, "amprp": {"type": "real(dp)", "dimension": ":"}, "greasp": {"type": "real(dp)", "dimension": null}, "ion_nstepe": {"type": "integer", "dimension": null}, "ion_maxstep": {"type": "integer", "dimension": null}, "upscale": {"type": "real(dp)", "dimension": null}, "pot_extrapolation": {"type": "character(len=80)", "dimension": null}, "wfc_extrapolation": {"type": "character(len=80)", "dimension": null}, "refold_pos": {"type": "logical", "dimension": null}, "remove_rigid_rot": {"type": "logical", "dimension": null}, "delta_t": {"type": "real(dp)", "dimension": null}, "nraise": {"type": "integer", "dimension": null}, "bfgs_ndim": {"type": "integer", "dimension": null}, "trust_radius_max": {"type": "real(dp)", "dimension": null}, "trust_radius_min": {"type": "real(dp)", "dimension": null}, "trust_radius_ini": {"type": "real(dp)", "dimension": null}, "w_1": {"type": "real(dp)", "dimension": null}, "w_2": {"type": "real(dp)", "dimension": null}, "l_mplathe": {"type": "logical", "dimension": null}, "n_muller": {"type": "integer", "dimension": null}, "np_muller": {"type": "integer", "dimension": null}, "l_exit_muller": {"type": "logical", "dimension": null}, "cell_parameters": {"type": "character(len=80)", "dimension": null}, "cell_dynamics": {"type": "character(len=80)", "dimension": null}, "cell_dynamics_allowed": {"type": "character(len=80)", "dimension": "7"}, "cell_velocities": {"type": "character(len=80)", "dimension": null}, "press": {"type": "real(dp)", "dimension": null}, "wmass": {"type": "real(dp)", "dimension": null}, "cell_temperature": {"type": "character(len=80)", "dimension": null}, "temph": {"type": "real(dp)", "dimension": null}, "fnoseh": {"type": "real(dp)", "dimension": null}, "greash": {"type": "real(dp)", "dimension": null}, "cell_dofree": {"type": "character(len=80)", "dimension": null}, "cell_factor": {"type": "real(dp)", "dimension": null}, "cell_nstepe": {"type": "integer", "dimension": null}, "cell_damping": {"type": "real(dp)", "dimension": null}, "press_conv_thr": {"type": "real(dp)", "dimension": null}, "abivol": {"type": "logical", "dimension": null}, "abisur": {"type": "logical", "dimension": null}, "pvar": {"type": "logical", "dimension": null}, "fill_vac": {"type": "logical", "dimension": null}, "scale_at": {"type": "logical", "dimension": null}, "t_gauss": {"type": "logical", "dimension": null}, "jellium": {"type": "logical", "dimension": null}, "cntr": {"type": "logical", "dimension": ":"}, "P_ext": {"type": "real(dp)", "dimension": null}, "P_in": {"type": "real(dp)", "dimension": null}, "P_fin": {"type": "real(dp)", "dimension": null}, "rho_thr": {"type": "real(dp)", "dimension": null}, "step_rad": {"type": "real(dp)", "dimension": ":"}, "Surf_t": {"type": "real(dp)", "dimension": null}, "dthr": {"type": "real(dp)", "dimension": null}, "R_j": {"type": "real(dp)", "dimension": null}, "h_j": {"type": "real(dp)", "dimension": null}, "delta_eps": {"type": "real(dp)", "dimension": null}, "delta_sigma": {"type": "real(dp)", "dimension": null}, "n_cntr": {"type": "integer", "dimension": null}, "axis": {"type": "integer", "dimension": null}, "wf_efield": {"type": "logical", "dimension": null}, "wf_switch": {"type": "logical", "dimension": null}, "sw_len": {"type": "integer", "dimension": null}, "efx0": {"type": "real(dp)", "dimension": null}, "efy0": {"type": "real(dp)", "dimension": null}, "efz0": {"type": "real(dp)", "dimension": null}, "efx1": {"type": "real(dp)", "dimension": null}, "efy1": {"type": "real(dp)", "dimension": null}, "efz1": {"type": "real(dp)", "dimension": null}, "wfsd": {"type": "integer", "dimension": null}, "wfdt": {"type": "real(dp)", "dimension": null}, "maxwfdt": {"type": "real(dp)", "dimension": null}, "wf_q": {"type": "real(dp)", "dimension": null}, "wf_friction": {"type": "real(dp)", "dimension": null}, "vnbsp": {"type": "integer", "dimension": null}, "exx_neigh": {"type": "integer", "dimension": null}, "exx_poisson_eps": {"type": "real(dp)", "dimension": null}, "exx_dis_cutoff": {"type": "real(dp)", "dimension": null}, "exx_ps_rcut_self": {"type": "real(dp)", "dimension": null}, "exx_ps_rcut_pair": {"type": "real(dp)", "dimension": null}, "exx_me_rcut_self": {"type": "real(dp)", "dimension": null}, "exx_me_rcut_pair": {"type": "real(dp)", "dimension": null}, "nit": {"type": "integer", "dimension": null}, "nsd": {"type": "integer", "dimension": null}, "nsteps": {"type": "integer", "dimension": null}, "tolw": {"type": "real(dp)", "dimension": null}, "adapt": {"type": "logical", "dimension": null}, "calwf": {"type": "integer", "dimension": null}, "nwf": {"type": "integer", "dimension": null}, "wffort": {"type": "integer", "dimension": null}, "writev": {"type": "logical", "dimension": null}, "plot_wannier": {"type": "logical", "dimension": null}, "use_energy_int": {"type": "logical", "dimension": null}, "print_wannier_coeff": {"type": "logical", "dimension": null}, "nwanx": {"type": "integer", "dimension": null}, "nwan": {"type": "integer", "dimension": null}, "plot_wan_num": {"type": "integer", "dimension": null}, "plot_wan_spin": {"type": "integer", "dimension": null}, "constrain_pot": {"type": "real(dp)", "dimension": ":,:"}, "atom_label": {"type": "character(len=3)", "dimension": ":"}, "atom_pfile": {"type": "character(len=80)", "dimension": ":"}, "atom_mass": {"type": "real(dp)", "dimension": ":"}, "taspc": {"type": "logical", "dimension": null}, "tkpoints": {"type": "logical", "dimension": null}, "tforces": {"type": "logical", "dimension": null}, "tocc": {"type": "logical", "dimension": null}, "tcell": {"type": "logical", "dimension": null}, "tionvel": {"type": "logical", "dimension": null}, "tconstr": {"type": "logical", "dimension": null}, "tksout": {"type": "logical", "dimension": null}, "ttemplate": {"type": "logical", "dimension": null}, "twannier": {"type": "logical", "dimension": null}, "rd_pos": {"type": "real(dp)", "dimension": ":,:"}, "sp_pos": {"type": "integer", "dimension": ":"}, "if_pos": {"type": "integer", "dimension": ":,:"}, "na_inp": {"type": "integer", "dimension": ":"}, "tapos": {"type": "logical", "dimension": null}, "lsg": {"type": "logical", "dimension": null}, "atomic_positions": {"type": "character(len=80)", "dimension": null}, "rd_vel": {"type": "real(dp)", "dimension": ":,:"}, "sp_vel": {"type": "integer", "dimension": ":"}, "tavel": {"type": "logical", "dimension": null}, "rd_for": {"type": "real(dp)", "dimension": ":,:"}, "tk_inp": {"type": "logical", "dimension": null}, "xk": {"type": "real(dp)", "dimension": ":,:"}, "wk": {"type": "real(dp)", "dimension": ":"}, "nkstot": {"type": "integer", "dimension": null}, "nk1": {"type": "integer", "dimension": null}, "nk2": {"type": "integer", "dimension": null}, "nk3": {"type": "integer", "dimension": null}, "k1": {"type": "integer", "dimension": null}, "k2": {"type": "integer", "dimension": null}, "k3": {"type": "integer", "dimension": null}, "k_points": {"type": "character(len=80)", "dimension": null}, "f_inp": {"type": "real(dp)", "dimension": ":,:"}, "tf_inp": {"type": "logical", "dimension": null}, "rd_ht": {"type": "real(dp)", "dimension": "3,3"}, "cell_units": {"type": "character(len=80)", "dimension": null}, "trd_ht": {"type": "logical", "dimension": null}, "rd_ref_ht": {"type": "real(dp)", "dimension": "3,3"}, "ref_cell_units": {"type": "character(len=80)", "dimension": null}, "ref_cell": {"type": "logical", "dimension": null}, "nc_fields": {"type": "integer", "dimension": null}, "nconstr_inp": {"type": "integer", "dimension": null}, "constr_tol_inp": {"type": "real(dp)", "dimension": null}, "constr_type_inp": {"type": "character(len=20)", "dimension": ":"}, "constr_inp": {"type": "real(dp)", "dimension": ":,:"}, "constr_target_inp": {"type": "real(dp)", "dimension": ":"}, "constr_target_set": {"type": "logical", "dimension": ":"}, "iprnks": {"type": "integer", "dimension": ":, :"}, "nprnks": {"type": "integer", "dimension": ":"}, "nwf_max": {"type": "integer", "dimension": null}, "wannier_index": {"type": "integer", "dimension": ":,:"}, "wan_data": {"type": "type(wannier_data)", "dimension": ":,:"}, "xmloutput": {"type": "logical", "dimension": null}}
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
  real(dp), allocatable, dimension(:) :: starting_magnetization ! dimensions = [:]
  logical :: lda_plus_u = .false.
  integer :: lda_plus_u_kind = 0
  integer :: nspinx = 2
  real(dp), allocatable, dimension(:,:,:) :: starting_ns_eigenvalue ! dimensions = [:,:,:]
  real(dp), allocatable, dimension(:) :: hubbard_u ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: hubbard_j0 ! dimensions = [:]
  real(dp), allocatable, dimension(:,:) :: hubbard_j ! dimensions = [:,:]
  real(dp), allocatable, dimension(:) :: hubbard_alpha ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: hubbard_beta ! dimensions = [:]
  character(len=80) :: U_projection_type = 'atomic'
  logical :: la2F = .false.
  logical :: step_pen = .false.
  real(dp), allocatable, dimension(:,:) :: A_pen ! dimensions = [:,:]
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
  real(dp), allocatable, dimension(:) :: angle1 ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: angle2 ! dimensions = [:]
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
  real(dp), allocatable, dimension(:) :: london_c6 ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: london_rvdw ! dimensions = [:]
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
  real(dp), allocatable, dimension(:) :: ion_radius ! dimensions = [:]
  integer :: iesr = 1
  real(dp) :: ion_damping = 0.2_dp
  character(len=80) :: ion_positions = 'default'
  character(len=80) :: ion_velocities = 'default'
  character(len=80) :: ion_temperature = 'not_controlled'
  real(dp) :: tempw = 300.0_dp
  integer :: nhclm = 4
  real(dp), allocatable, dimension(:) :: fnosep ! dimensions = [:]
  integer :: nhpcl = 0
  integer :: nhptyp = 0
  integer, allocatable, dimension(:) :: nhgrp ! dimensions = [:]
  integer :: ndega = 0
  real(dp) :: tolp = 50.0_dp
  real(dp), allocatable, dimension(:) :: fnhscl ! dimensions = [:]
  logical, allocatable, dimension(:) :: tranp ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: amprp ! dimensions = [:]
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
  logical, allocatable, dimension(:) :: cntr ! dimensions = [:]
  real(dp) :: P_ext = 0.0_dp
  real(dp) :: P_in = 0.0_dp
  real(dp) :: P_fin = 0.0_dp
  real(dp) :: rho_thr = 0.0_dp
  real(dp), allocatable, dimension(:) :: step_rad ! dimensions = [:]
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
  real(dp), allocatable, dimension(:,:) :: constrain_pot ! dimensions = [:,:]
  character(len=3), allocatable, dimension(:) :: atom_label ! dimensions = [:]
  character(len=80), allocatable, dimension(:) :: atom_pfile ! dimensions = [:]
  real(dp), allocatable, dimension(:) :: atom_mass ! dimensions = [:]
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
  real(dp), allocatable, dimension(:,:) :: rd_pos ! dimensions = [:,:]
  integer, allocatable, dimension(:) :: sp_pos ! dimensions = [:]
  integer, allocatable, dimension(:,:) :: if_pos ! dimensions = [:,:]
  integer, allocatable, dimension(:) :: na_inp ! dimensions = [:]
  logical :: tapos = .false.
  logical :: lsg = .false.
  character(len=80) :: atomic_positions = 'crystal'
  real(dp), allocatable, dimension(:,:) :: rd_vel ! dimensions = [:,:]
  integer, allocatable, dimension(:) :: sp_vel ! dimensions = [:]
  logical :: tavel = .false.
  real(dp), allocatable, dimension(:,:) :: rd_for ! dimensions = [:,:]
  logical :: tk_inp = .false.
  real(dp), allocatable, dimension(:,:) :: xk ! dimensions = [:,:]
  real(dp), allocatable, dimension(:) :: wk ! dimensions = [:]
  integer :: nkstot = 0
  integer :: nk1 = 0
  integer :: nk2 = 0
  integer :: nk3 = 0
  integer :: k1 = 0
  integer :: k2 = 0
  integer :: k3 = 0
  character(len=80) :: k_points = 'gamma'
  real(dp), allocatable, dimension(:,:) :: f_inp ! dimensions = [:,:]
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
  character(len=20), allocatable, dimension(:) :: constr_type_inp ! dimensions = [:]
  real(dp), allocatable, dimension(:,:) :: constr_inp ! dimensions = [:,:]
  real(dp), allocatable, dimension(:) :: constr_target_inp ! dimensions = [:]
  logical, allocatable, dimension(:) :: constr_target_set ! dimensions = [:]
  integer, allocatable, dimension(:, :) :: iprnks ! dimensions = [:, :]
  integer, allocatable, dimension(:) :: nprnks ! dimensions = [:]
  integer :: nwf_max = 1000
  integer, allocatable, dimension(:,:) :: wannier_index ! dimensions = [:,:]
  type(wannier_data), allocatable, dimension(:,:) :: wan_data ! dimensions = [:,:]
  logical :: xmloutput = .false.
  logical :: xmloutput = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type input_parameters_type
