type :: pseudo_types_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), dimension(:), pointer :: ae_rho_atc
  real(dp), dimension(:,:,:), pointer :: pfunc
  real(dp), dimension(:,:,:), pointer :: pfunc_rel
  real(dp), dimension(:,:,:), pointer :: ptfunc
  real(dp), dimension(:,:), pointer :: aewfc_rel
  real(dp), dimension(:), pointer :: ae_vloc
  real(dp), dimension(:), pointer :: oc
  real(dp), dimension(:,:,:), pointer :: augmom
  real(dp) :: raug
  integer :: iraug
  integer :: lmax_aug
  real(dp) :: core_energy
  character(len=12) :: augshape
  character(len=80) :: generated = ' '
  character(len=80) :: author = ' '
  character(len=80) :: date = ' '
  character(len=80) :: comment = ' '
  character(len=2) :: psd = ' '
  character(len=20) :: typ = ' '
  character(len=6) :: rel = ' '
  logical :: tvanp
  logical :: tcoulombp
  logical :: nlcc
  logical :: is_gth
  character(len=25) :: dft
  real(dp) :: zp
  real(dp) :: etotps
  real(dp) :: ecutwfc
  real(dp) :: ecutrho
  character(len=11) :: nv
  integer :: lmax
  integer :: lmax_rho
  real(dp), dimension(:,:,:), pointer :: vnl
  integer :: nwfc
  integer :: nbeta
  integer, dimension(:), pointer :: kbeta
  integer :: kkbeta
  integer, dimension(:), pointer :: lll
  real(dp), dimension(:,:), pointer :: beta
  character(len=2), dimension(:), pointer :: els
  character(len=2), dimension(:), pointer :: els_beta
  integer, dimension(:), pointer :: nchi
  integer, dimension(:), pointer :: lchi
  real(dp), dimension(:), pointer :: epseu
  real(dp), dimension(:), pointer :: rcut_chi
  real(dp), dimension(:), pointer :: rcutus_chi
  real(dp), dimension(:,:), pointer :: chi
  real(dp), dimension(:), pointer :: rho_at
  integer :: mesh
  real(dp) :: xmin
  real(dp) :: rmax
  real(dp) :: zmesh
  real(dp) :: dx
  real(dp), dimension(:), pointer :: r
  real(dp), dimension(:), pointer :: rab
  real(dp), dimension(:), pointer :: rho_atc
  integer :: lloc
  real(dp) :: rcloc
  real(dp), dimension(:), pointer :: vloc
  real(dp), dimension(:,:), pointer :: dion
  logical :: q_with_l
  integer :: nqf
  integer :: nqlc
  real(dp) :: qqq_eps
  real(dp), dimension(:), pointer :: rinner
  real(dp), dimension(:,:), pointer :: qqq
  real(dp), dimension(:,:), pointer :: qfunc
  real(dp), dimension(:,:,:), pointer :: qfuncl
  real(dp), dimension(:,:,:,:), pointer :: qfcoef
  logical :: has_wfc
  real(dp), dimension(:,:), pointer :: aewfc
  real(dp), dimension(:,:), pointer :: pswfc
  logical :: has_so
  integer, dimension(:), pointer :: nn
  real(dp), dimension(:), pointer :: rcut
  real(dp), dimension(:), pointer :: rcutus
  real(dp), dimension(:), pointer :: jchi
  real(dp), dimension(:), pointer :: jjj
  integer :: paw_data_format
  logical :: tpawp
  type(paw_in_upf) :: paw
  type(radial_grid_type), pointer :: grid
  logical :: has_gipaw
  logical :: paw_as_gipaw
  integer :: gipaw_data_format
  integer :: gipaw_ncore_orbitals
  real(dp), dimension(:), pointer :: gipaw_core_orbital_n
  real(dp), dimension(:), pointer :: gipaw_core_orbital_l
  character(len=2), dimension(:), pointer :: gipaw_core_orbital_el
  real(dp), dimension(:,:), pointer :: gipaw_core_orbital
  real(dp), dimension(:), pointer :: gipaw_vlocal_ae
  real(dp), dimension(:), pointer :: gipaw_vlocal_ps
  integer :: gipaw_wfs_nchannels
  character(len=2), dimension(:), pointer :: gipaw_wfs_el
  integer, dimension(:), pointer :: gipaw_wfs_ll
  real(dp), dimension(:,:), pointer :: gipaw_wfs_ae
  real(dp), dimension(:), pointer :: gipaw_wfs_rcut
  real(dp), dimension(:), pointer :: gipaw_wfs_rcutus
  real(dp), dimension(:,:), pointer :: gipaw_wfs_ps
  character(len=32) :: MD5_cksum = 'not set'
  character(len=32) :: MD5_cksum = 'not set'
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type pseudo_types_type
