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
  complex(kind=dp), dimension(:,:), pointer :: p
  logical :: l_complete
  integer :: idiago
  integer :: ithres
  real(kind=dp) :: thres
  real(kind=dp), allocatable, dimension(:,:,:) :: wannier_centers
  real(kind=dp), allocatable, dimension(:,:) :: wannier_radii
  integer, allocatable, dimension(:,:,:) :: w_centers
  integer, allocatable, dimension(:,:) :: w_radii
  complex(kind=dp), allocatable, dimension(:,:,:) :: u_trans
  integer :: numw_prod
  integer, dimension(2) :: num_nbndv
  integer :: num_nbnds
  real(kind=dp), allocatable, dimension(:,:,:) :: becp_gw
  real(kind=dp), allocatable, dimension(:,:,:) :: becp_gw_c
  complex(kind=dp), allocatable, dimension(:,:,:,:) :: expgsave
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
  real(kind=dp), allocatable, dimension(:) :: vg_q
  logical :: l_t_wannier
  real(kind=dp) :: dual_vt
  real(kind=dp) :: dual_vs
  logical :: lwannier
  real(kind=dp) :: wannier_thres
  integer :: s_first_state
  integer :: s_last_state
  logical :: l_selfconsistent
  real(kind=dp), allocatable, dimension(:,:) :: ene_gw
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
  integer, allocatable, dimension(:,:) :: i_list
  logical :: l_full
  integer, dimension(2) :: n_full
  integer :: len_head_block_freq
  integer :: len_head_block_wfc
  integer :: len_head_block_wfc
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type wannier_gw_type
