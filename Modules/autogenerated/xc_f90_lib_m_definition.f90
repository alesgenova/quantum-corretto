init_args = {"XC_FAMILY_UNKNOWN": {"type": "integer", "dimension": null}, "XC_FAMILY_NONE": {"type": "integer", "dimension": null}, "XC_FAMILY_LDA": {"type": "integer", "dimension": null}, "XC_FAMILY_GGA": {"type": "integer", "dimension": null}, "XC_FAMILY_MGGA": {"type": "integer", "dimension": null}, "XC_FAMILY_LCA": {"type": "integer", "dimension": null}, "XC_FAMILY_OEP": {"type": "integer", "dimension": null}, "XC_FAMILY_HYB_GGA": {"type": "integer", "dimension": null}, "XC_FAMILY_HYB_MGGA": {"type": "integer", "dimension": null}, "XC_UNPOLARIZED": {"type": "integer", "dimension": null}, "XC_POLARIZED": {"type": "integer", "dimension": null}, "XC_NON_RELATIVISTIC": {"type": "integer", "dimension": null}, "XC_RELATIVISTIC": {"type": "integer", "dimension": null}, "XC_EXCHANGE": {"type": "integer", "dimension": null}, "XC_CORRELATION": {"type": "integer", "dimension": null}, "XC_EXCHANGE_CORRELATION": {"type": "integer", "dimension": null}, "XC_KINETIC": {"type": "integer", "dimension": null}, "XC_FLAGS_HAVE_EXC": {"type": "integer", "dimension": null}, "XC_FLAGS_HAVE_VXC": {"type": "integer", "dimension": null}, "XC_FLAGS_HAVE_FXC": {"type": "integer", "dimension": null}, "XC_FLAGS_HAVE_KXC": {"type": "integer", "dimension": null}, "XC_FLAGS_HAVE_LXC": {"type": "integer", "dimension": null}, "XC_FLAGS_1D": {"type": "integer", "dimension": null}, "XC_FLAGS_2D": {"type": "integer", "dimension": null}, "XC_FLAGS_3D": {"type": "integer", "dimension": null}, "XC_FLAGS_STABLE": {"type": "integer", "dimension": null}, "XC_FLAGS_DEVELOPMENT": {"type": "integer", "dimension": null}, "XC_GGA_XC_LB": {"type": "integer", "dimension": null}, "XC_GGA_K_ABSR1": {"type": "integer", "dimension": null}, "XC_GGA_K_ABSR2": {"type": "integer", "dimension": null}}
type :: xc_f90_lib_m_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: XC_FAMILY_UNKNOWN = -1
  integer :: XC_FAMILY_NONE = 0
  integer :: XC_FAMILY_LDA = 1
  integer :: XC_FAMILY_GGA = 2
  integer :: XC_FAMILY_MGGA = 4
  integer :: XC_FAMILY_LCA = 8
  integer :: XC_FAMILY_OEP = 16
  integer :: XC_FAMILY_HYB_GGA = 32
  integer :: XC_FAMILY_HYB_MGGA = 64
  integer :: XC_UNPOLARIZED = 1
  integer :: XC_POLARIZED = 2
  integer :: XC_NON_RELATIVISTIC = 0
  integer :: XC_RELATIVISTIC = 1
  integer :: XC_EXCHANGE = 0
  integer :: XC_CORRELATION = 1
  integer :: XC_EXCHANGE_CORRELATION = 2
  integer :: XC_KINETIC = 3
  integer :: XC_FLAGS_HAVE_EXC = 1
  integer :: XC_FLAGS_HAVE_VXC = 2
  integer :: XC_FLAGS_HAVE_FXC = 4
  integer :: XC_FLAGS_HAVE_KXC = 8
  integer :: XC_FLAGS_HAVE_LXC = 16
  integer :: XC_FLAGS_1D = 32
  integer :: XC_FLAGS_2D = 64
  integer :: XC_FLAGS_3D = 128
  integer :: XC_FLAGS_STABLE = 512
  integer :: XC_FLAGS_DEVELOPMENT = 1024
  integer :: XC_GGA_XC_LB = 160
  integer :: XC_GGA_K_ABSR1 = 506
  integer :: XC_GGA_K_ABSR2 = 507

contains
  procedure, pass :: init => xc_f90_lib_m_type_init
  procedure, pass :: update => xc_f90_lib_m_type_update
end type xc_f90_lib_m_type
