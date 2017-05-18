alloc_args = {}
init_args = {"l_head": {"type": "logical", "dimension": null}, "n_gauss": {"type": "integer", "dimension": null}, "omega_gauss": {"type": "real(kind=dp)", "dimension": null}, "grid_type": {"type": "integer", "dimension": null}, "nsteps_lanczos": {"type": "integer", "dimension": null}, "second_grid_n": {"type": "integer", "dimension": null}, "second_grid_i": {"type": "integer", "dimension": null}, "l_scissor": {"type": "logical", "dimension": null}, "scissor": {"type": "real(kind=dp)", "dimension": "2"}, "wannier_centers": {"type": "real(kind=dp)", "dimension": ":,:,:"}, "wannier_radii": {"type": "real(kind=dp)", "dimension": ":,:"}, "w_centers": {"type": "integer", "dimension": ":,:,:"}, "w_radii": {"type": "integer", "dimension": ":,:"}, "u_trans": {"type": "complex(kind=dp)", "dimension": ":,:,:"}, "numw_prod": {"type": "integer", "dimension": null}, "num_nbndv": {"type": "integer", "dimension": "2"}, "num_nbnds": {"type": "integer", "dimension": null}, "becp_gw": {"type": "real(kind=dp)", "dimension": ":,:,:"}, "becp_gw_c": {"type": "real(kind=dp)", "dimension": ":,:,:"}, "expgsave": {"type": "complex(kind=dp)", "dimension": ":,:,:,:"}, "nset": {"type": "integer", "dimension": null}, "l_truncated_coulomb": {"type": "logical", "dimension": null}, "truncation_radius": {"type": "real(kind=dp)", "dimension": null}, "remainder": {"type": "integer", "dimension": null}, "restart_gww": {"type": "integer", "dimension": null}, "l_gram": {"type": "logical", "dimension": null}, "l_exchange": {"type": "logical", "dimension": null}, "l_zero": {"type": "logical", "dimension": null}, "l_wing": {"type": "logical", "dimension": null}, "nset_overlap": {"type": "integer", "dimension": null}, "nspace": {"type": "integer", "dimension": null}, "ecutoff_global": {"type": "real(kind=dp)", "dimension": null}, "maxiter2": {"type": "integer", "dimension": null}, "diago_thr2": {"type": "real(kind=dp)", "dimension": null}, "l_plot_mlwf": {"type": "logical", "dimension": null}, "max_ngm": {"type": "integer", "dimension": null}, "l_pmatrix": {"type": "logical", "dimension": null}, "p_mpime": {"type": "integer", "dimension": null}, "p_nproc": {"type": "integer", "dimension": null}, "npcol": {"type": "integer", "dimension": null}, "nprow": {"type": "integer", "dimension": null}, "icontxt": {"type": "integer", "dimension": null}, "myrow": {"type": "integer", "dimension": null}, "mycol": {"type": "integer", "dimension": null}, "l_coulomb_analysis": {"type": "logical", "dimension": null}, "cutoff_coulomb_analysis": {"type": "real(kind=dp)", "dimension": null}, "n_pola_lanczos": {"type": "integer", "dimension": null}, "n_self_lanczos": {"type": "integer", "dimension": null}, "nsteps_lanczos_pola": {"type": "integer", "dimension": null}, "nsteps_lanczos_self": {"type": "integer", "dimension": null}, "s_pola_lanczos": {"type": "real(kind=dp)", "dimension": null}, "s_self_lanczos": {"type": "real(kind=dp)", "dimension": null}, "nump_lanczos": {"type": "integer", "dimension": null}, "nums_lanczos": {"type": "integer", "dimension": null}, "s_g_lanczos": {"type": "real(kind=dp)", "dimension": null}, "l_pmat_diago": {"type": "logical", "dimension": null}, "pmat_ethr": {"type": "real(kind=dp)", "dimension": null}, "pmat_cutoff": {"type": "real(kind=dp)", "dimension": null}, "pmat_type": {"type": "integer", "dimension": null}, "n_fast_pmat": {"type": "integer", "dimension": null}, "n_pmat": {"type": "integer", "dimension": null}, "s_pmat": {"type": "real(kind=dp)", "dimension": null}, "lanczos_restart": {"type": "integer", "dimension": null}, "n_pola_lanczos_eff": {"type": "integer", "dimension": null}, "n_self_lanczos_eff": {"type": "integer", "dimension": null}, "off_fast_pmat": {"type": "real(kind=dp)", "dimension": null}, "l_fast_pola": {"type": "logical", "dimension": null}, "l_v_basis": {"type": "logical", "dimension": null}, "v_cutoff": {"type": "real(kind=dp)", "dimension": null}, "l_iter_algorithm": {"type": "logical", "dimension": null}, "dual_pb": {"type": "real(kind=dp)", "dimension": null}, "vg_q": {"type": "real(kind=dp)", "dimension": ":"}, "l_t_wannier": {"type": "logical", "dimension": null}, "dual_vt": {"type": "real(kind=dp)", "dimension": null}, "dual_vs": {"type": "real(kind=dp)", "dimension": null}, "lwannier": {"type": "logical", "dimension": null}, "wannier_thres": {"type": "real(kind=dp)", "dimension": null}, "s_first_state": {"type": "integer", "dimension": null}, "s_last_state": {"type": "integer", "dimension": null}, "l_selfconsistent": {"type": "logical", "dimension": null}, "ene_gw": {"type": "real(kind=dp)", "dimension": ":,:"}, "n_gw_states": {"type": "integer", "dimension": null}, "delta_self": {"type": "real(kind=dp)", "dimension": null}, "l_whole_s": {"type": "logical", "dimension": null}, "l_ts_eigen": {"type": "logical", "dimension": null}, "l_frac_occ": {"type": "logical", "dimension": null}, "num_nbndv_min": {"type": "integer", "dimension": "2"}, "l_cond_pol_base": {"type": "logical", "dimension": null}, "l_semicore": {"type": "logical", "dimension": null}, "n_semicore": {"type": "integer", "dimension": null}, "l_semicore_read": {"type": "logical", "dimension": null}, "l_verbose": {"type": "logical", "dimension": null}, "l_contour": {"type": "logical", "dimension": null}, "l_real": {"type": "logical", "dimension": null}, "l_big_system": {"type": "logical", "dimension": null}, "extra_pw_cutoff": {"type": "real(kind=dp)", "dimension": null}, "l_bse": {"type": "logical", "dimension": null}, "s_bse": {"type": "real(kind=dp)", "dimension": null}, "dual_bse": {"type": "real(kind=dp)", "dimension": null}, "l_simple": {"type": "logical", "dimension": null}, "l_list": {"type": "logical", "dimension": null}, "n_list": {"type": "integer", "dimension": "2"}, "i_list": {"type": "integer", "dimension": ":,:"}, "l_full": {"type": "logical", "dimension": null}, "n_full": {"type": "integer", "dimension": "2"}, "len_head_block_freq": {"type": "integer", "dimension": null}, "len_head_block_wfc": {"type": "integer", "dimension": null}}
type :: wannier_gw_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: l_head = .false.
  integer :: n_gauss
  real(kind=dp) :: omega_gauss
  integer :: grid_type
  integer :: nsteps_lanczos
  integer :: second_grid_n
  integer :: second_grid_i
  logical :: l_scissor
  real(kind=dp), dimension(2) :: scissor
  real(kind=dp), allocatable, dimension(:,:,:) :: wannier_centers ! dimensions = [:,:,:]
  real(kind=dp), allocatable, dimension(:,:) :: wannier_radii ! dimensions = [:,:]
  integer, allocatable, dimension(:,:,:) :: w_centers ! dimensions = [:,:,:]
  integer, allocatable, dimension(:,:) :: w_radii ! dimensions = [:,:]
  complex(kind=dp), allocatable, dimension(:,:,:) :: u_trans ! dimensions = [:,:,:]
  integer :: numw_prod
  integer, dimension(2) :: num_nbndv
  integer :: num_nbnds
  real(kind=dp), allocatable, dimension(:,:,:) :: becp_gw ! dimensions = [:,:,:]
  real(kind=dp), allocatable, dimension(:,:,:) :: becp_gw_c ! dimensions = [:,:,:]
  complex(kind=dp), allocatable, dimension(:,:,:,:) :: expgsave ! dimensions = [:,:,:,:]
  integer :: nset
  logical :: l_truncated_coulomb
  real(kind=dp) :: truncation_radius
  integer :: remainder
  integer :: restart_gww
  logical :: l_gram
  logical :: l_exchange
  logical :: l_zero
  logical :: l_wing
  integer :: nset_overlap
  integer :: nspace
  real(kind=dp) :: ecutoff_global
  integer :: maxiter2
  real(kind=dp) :: diago_thr2
  logical :: l_plot_mlwf
  integer :: max_ngm
  logical :: l_pmatrix
  integer :: p_mpime
  integer :: p_nproc
  integer :: npcol
  integer :: nprow
  integer :: icontxt
  integer :: myrow
  integer :: mycol
  logical :: l_coulomb_analysis
  real(kind=dp) :: cutoff_coulomb_analysis
  integer :: n_pola_lanczos
  integer :: n_self_lanczos
  integer :: nsteps_lanczos_pola
  integer :: nsteps_lanczos_self
  real(kind=dp) :: s_pola_lanczos
  real(kind=dp) :: s_self_lanczos
  integer :: nump_lanczos
  integer :: nums_lanczos
  real(kind=dp) :: s_g_lanczos
  logical :: l_pmat_diago
  real(kind=dp) :: pmat_ethr
  real(kind=dp) :: pmat_cutoff
  integer :: pmat_type
  integer :: n_fast_pmat
  integer :: n_pmat
  real(kind=dp) :: s_pmat
  integer :: lanczos_restart
  integer :: n_pola_lanczos_eff
  integer :: n_self_lanczos_eff
  real(kind=dp) :: off_fast_pmat
  logical :: l_fast_pola
  logical :: l_v_basis
  real(kind=dp) :: v_cutoff
  logical :: l_iter_algorithm
  real(kind=dp) :: dual_pb
  real(kind=dp), allocatable, dimension(:) :: vg_q ! dimensions = [:]
  logical :: l_t_wannier
  real(kind=dp) :: dual_vt
  real(kind=dp) :: dual_vs
  logical :: lwannier
  real(kind=dp) :: wannier_thres
  integer :: s_first_state
  integer :: s_last_state
  logical :: l_selfconsistent
  real(kind=dp), allocatable, dimension(:,:) :: ene_gw ! dimensions = [:,:]
  integer :: n_gw_states
  real(kind=dp) :: delta_self
  logical :: l_whole_s
  logical :: l_ts_eigen
  logical :: l_frac_occ
  integer, dimension(2) :: num_nbndv_min
  logical :: l_cond_pol_base
  logical :: l_semicore
  integer :: n_semicore
  logical :: l_semicore_read
  logical :: l_verbose
  logical :: l_contour
  logical :: l_real
  logical :: l_big_system
  real(kind=dp) :: extra_pw_cutoff
  logical :: l_bse
  real(kind=dp) :: s_bse
  real(kind=dp) :: dual_bse
  logical :: l_simple
  logical :: l_list
  integer, dimension(2) :: n_list
  integer, allocatable, dimension(:,:) :: i_list ! dimensions = [:,:]
  logical :: l_full
  integer, dimension(2) :: n_full
  integer :: len_head_block_freq
  integer :: len_head_block_wfc
  integer :: len_head_block_wfc
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type wannier_gw_type
