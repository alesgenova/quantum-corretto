alloc_args = {}
init_args = {"rho": {"type": "type(scf_type)", "dimension": null}, "v": {"type": "type(scf_type)", "dimension": null}, "vnew": {"type": "type(scf_type)", "dimension": null}, "v_of_0": {"type": "real(dp)", "dimension": null}, "vltot": {"type": "real(dp)", "dimension": ":"}, "vrs": {"type": "real(dp)", "dimension": ":,:"}, "rho_core": {"type": "real(dp)", "dimension": ":"}, "kedtau": {"type": "real(dp)", "dimension": ":,:"}, "rhog_core": {"type": "complex(dp)", "dimension": ":"}, "record_length": {"type": "integer", "dimension": null}, "rlen_rho": {"type": "integer", "dimension": null}, "rlen_kin": {"type": "integer", "dimension": null}, "rlen_ldaU": {"type": "integer", "dimension": null}, "rlen_bec": {"type": "integer", "dimension": null}, "rlen_dip": {"type": "integer", "dimension": null}, "start_rho": {"type": "integer", "dimension": null}, "start_kin": {"type": "integer", "dimension": null}, "start_ldaU": {"type": "integer", "dimension": null}, "start_bec": {"type": "integer", "dimension": null}, "start_dipole": {"type": "integer", "dimension": null}, "lda_plus_u_co": {"type": "logical", "dimension": null}, "lda_plus_u_nc": {"type": "logical", "dimension": null}, "io_buffer": {"type": "complex(dp)", "dimension": ":"}}
type :: scf_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(scf_type) :: rho
  type(scf_type) :: v
  type(scf_type) :: vnew
  real(dp) :: v_of_0
  real(dp), allocatable, dimension(:) :: vltot ! dimensions = [:]
  real(dp), allocatable, dimension(:,:) :: vrs ! dimensions = [:,:]
  real(dp), allocatable, dimension(:) :: rho_core ! dimensions = [:]
  real(dp), allocatable, dimension(:,:) :: kedtau ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:) :: rhog_core ! dimensions = [:]
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
  complex(dp), allocatable, dimension(:) :: io_buffer ! dimensions = [:]
  complex(dp), allocatable, dimension(:) :: io_buffer ! dimensions = [:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type scf_type
