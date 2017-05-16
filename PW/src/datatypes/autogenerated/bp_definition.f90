type :: bp_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: lberry = .false.
  logical :: lelfield = .false.
  logical :: lorbm = .false.
  integer :: gdir
  integer :: nppstr
  integer :: nberrycyc
  real(dp) :: efield
  complex(dp), allocatable, dimension(:,:) :: evcel
  complex(dp), allocatable, dimension(:,:,:) :: evcelm
  complex(dp), allocatable, dimension(:,:,:) :: evcelp
  complex(dp), allocatable, dimension(:,:) :: fact_hepsi
  type(bec_type) :: bec_evcel
  integer, allocatable, dimension(:,:) :: mapgp_global
  integer, allocatable, dimension(:,:) :: mapgm_global
  real(dp), dimension(3) :: ion_pol
  real(dp), dimension(3) :: el_pol
  real(dp), dimension(3) :: fc_pol
  logical :: l_el_pol_old
  real(dp), dimension(3) :: el_pol_old
  real(dp), dimension(3) :: el_pol_acc
  integer, dimension(3) :: nppstr_3d
  integer, allocatable, dimension(:,:) :: nx_el
  logical :: l3dstring
  real(dp), dimension(3) :: efield_cart
  real(dp), dimension(3) :: efield_cry
  real(dp), dimension(3,3) :: transform_el
  integer, allocatable, dimension(:,:) :: mapg_owner
  real(dp) :: pdl_tot
  integer :: phase_control
  integer :: phase_control
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type bp_type
