type :: scf_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:,:) :: of_r
  complex(dp), allocatable, dimension(:,:) :: of_g
  real(dp), allocatable, dimension(:,:) :: kin_r
  complex(dp), allocatable, dimension(:,:) :: kin_g
  real(dp), allocatable, dimension(:,:,:,:) :: ns
  complex(dp), allocatable, dimension(:,:,:,:) :: ns_nc
  real(dp), allocatable, dimension(:,:,:) :: bec
  real(dp) :: el_dipole
  type(scf_type) :: rho
  type(scf_type) :: v
  type(scf_type) :: vnew
  real(dp) :: v_of_0
  real(dp), allocatable, dimension(:) :: vltot
  real(dp), allocatable, dimension(:,:) :: vrs
  real(dp), allocatable, dimension(:) :: rho_core
  real(dp), allocatable, dimension(:,:) :: kedtau
  complex(dp), allocatable, dimension(:) :: rhog_core
  integer :: record_length
  integer :: rlen_rho = 0
  integer :: rlen_kin = 0
  integer :: rlen_ldaU = 0
  integer :: rlen_bec = 0
  integer :: rlen_dip = 0
  integer :: start_rho = 0
  integer :: start_kin = 0
  integer :: start_ldaU = 0
  integer :: start_bec = 0
  integer :: start_dipole = 0
  logical :: lda_plus_u_co
  logical :: lda_plus_u_nc
  complex(dp), allocatable, dimension(:) :: io_buffer
  complex(dp), allocatable, dimension(:) :: io_buffer
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type scf_type
