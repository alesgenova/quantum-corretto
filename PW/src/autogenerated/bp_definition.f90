alloc_args = {}
init_args = {"lberry": {"type": "logical", "dimension": null}, "lelfield": {"type": "logical", "dimension": null}, "lorbm": {"type": "logical", "dimension": null}, "lcalc_z2": {"type": "logical", "dimension": null}, "z2_m_threshold": {"type": "real(dp)", "dimension": null}, "z2_z_threshold": {"type": "real(dp)", "dimension": null}, "gdir": {"type": "integer", "dimension": null}, "nppstr": {"type": "integer", "dimension": null}, "nberrycyc": {"type": "integer", "dimension": null}, "efield": {"type": "real(dp)", "dimension": null}, "evcel": {"type": "complex(dp)", "dimension": ":,:"}, "evcelm": {"type": "complex(dp)", "dimension": ":,:,:"}, "evcelp": {"type": "complex(dp)", "dimension": ":,:,:"}, "fact_hepsi": {"type": "complex(dp)", "dimension": ":,:"}, "bec_evcel": {"type": "type(bec_type)", "dimension": null}, "mapgp_global": {"type": "integer", "dimension": ":,:"}, "mapgm_global": {"type": "integer", "dimension": ":,:"}, "ion_pol": {"type": "real(dp)", "dimension": "3"}, "el_pol": {"type": "real(dp)", "dimension": "3"}, "fc_pol": {"type": "real(dp)", "dimension": "3"}, "l_el_pol_old": {"type": "logical", "dimension": null}, "el_pol_old": {"type": "real(dp)", "dimension": "3"}, "el_pol_acc": {"type": "real(dp)", "dimension": "3"}, "nppstr_3d": {"type": "integer", "dimension": "3"}, "nx_el": {"type": "integer", "dimension": ":,:"}, "l3dstring": {"type": "logical", "dimension": null}, "efield_cart": {"type": "real(dp)", "dimension": "3"}, "efield_cry": {"type": "real(dp)", "dimension": "3"}, "transform_el": {"type": "real(dp)", "dimension": "3,3"}, "mapg_owner": {"type": "integer", "dimension": ":,:"}, "pdl_tot": {"type": "real(dp)", "dimension": null}, "phase_control": {"type": "integer", "dimension": null}}
type :: bp_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: lberry = .false.
  logical :: lelfield = .false.
  logical :: lorbm = .false.
  logical :: lcalc_z2 = .false.
  real(dp) :: z2_m_threshold
  real(dp) :: z2_z_threshold
  integer :: gdir
  integer :: nppstr
  integer :: nberrycyc
  real(dp) :: efield
  complex(dp), allocatable, dimension(:,:) :: evcel ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:,:,:) :: evcelm ! dimensions = [:,:,:]
  complex(dp), allocatable, dimension(:,:,:) :: evcelp ! dimensions = [:,:,:]
  complex(dp), allocatable, dimension(:,:) :: fact_hepsi ! dimensions = [:,:]
  type(bec_type) :: bec_evcel
  integer, allocatable, dimension(:,:) :: mapgp_global ! dimensions = [:,:]
  integer, allocatable, dimension(:,:) :: mapgm_global ! dimensions = [:,:]
  real(dp), dimension(3) :: ion_pol
  real(dp), dimension(3) :: el_pol
  real(dp), dimension(3) :: fc_pol
  logical :: l_el_pol_old
  real(dp), dimension(3) :: el_pol_old
  real(dp), dimension(3) :: el_pol_acc
  integer, dimension(3) :: nppstr_3d
  integer, allocatable, dimension(:,:) :: nx_el ! dimensions = [:,:]
  logical :: l3dstring
  real(dp), dimension(3) :: efield_cart
  real(dp), dimension(3) :: efield_cry
  real(dp), dimension(3,3) :: transform_el
  integer, allocatable, dimension(:,:) :: mapg_owner ! dimensions = [:,:]
  real(dp) :: pdl_tot
  integer :: phase_control
  integer :: phase_control
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type bp_type
