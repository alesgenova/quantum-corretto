init_args = {"dft": {"type": "character(len=25)", "dimension": null}, "dft_shortname": {"type": "character(len=6)", "dimension": null}, "notset": {"type": "integer", "dimension": null}, "iexch": {"type": "integer", "dimension": null}, "icorr": {"type": "integer", "dimension": null}, "igcx": {"type": "integer", "dimension": null}, "igcc": {"type": "integer", "dimension": null}, "imeta": {"type": "integer", "dimension": null}, "inlc": {"type": "integer", "dimension": null}, "exx_fraction": {"type": "real(dp)", "dimension": null}, "screening_parameter": {"type": "real(dp)", "dimension": null}, "gau_parameter": {"type": "real(dp)", "dimension": null}, "islda": {"type": "logical", "dimension": null}, "isgradient": {"type": "logical", "dimension": null}, "ismeta": {"type": "logical", "dimension": null}, "ishybrid": {"type": "logical", "dimension": null}, "isnonlocc": {"type": "logical", "dimension": null}, "exx_started": {"type": "logical", "dimension": null}, "has_finite_size_correction": {"type": "logical", "dimension": null}, "finite_size_cell_volume_set": {"type": "logical", "dimension": null}, "finite_size_cell_volume": {"type": "real(dp)", "dimension": null}, "discard_input_dft": {"type": "logical", "dimension": null}, "nxc": {"type": "integer", "dimension": null}, "ncc": {"type": "integer", "dimension": null}, "ngcx": {"type": "integer", "dimension": null}, "ngcc": {"type": "integer", "dimension": null}, "nmeta": {"type": "integer", "dimension": null}, "ncnl": {"type": "integer", "dimension": null}, "exc": {"type": "character(len=4)", "dimension": null}, "corr": {"type": "character(len=4)", "dimension": null}, "gradx": {"type": "character(len=4)", "dimension": null}, "gradc": {"type": "character(len=4)", "dimension": null}, "meta": {"type": "character(len=4)", "dimension": null}, "nonlocc": {"type": "character(len=4)", "dimension": null}}
type :: funct_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=25) :: dft = 'not set'
  character(len=6) :: dft_shortname = ' '
  integer :: notset = -1
  integer :: iexch = notset
  integer :: icorr = notset
  integer :: igcx = notset
  integer :: igcc = notset
  integer :: imeta = notset
  integer :: inlc = notset
  real(dp) :: exx_fraction = 0.0_dp
  real(dp) :: screening_parameter = 0.0_dp
  real(dp) :: gau_parameter = 0.0_dp
  logical :: islda = .false.
  logical :: isgradient = .false.
  logical :: ismeta = .false.
  logical :: ishybrid = .false.
  logical :: isnonlocc = .false.
  logical :: exx_started = .false.
  logical :: has_finite_size_correction = .false.
  logical :: finite_size_cell_volume_set = .false.
  real(dp) :: finite_size_cell_volume = notset
  logical :: discard_input_dft = .false.
  integer :: nxc = 8
  integer :: ncc = 10
  integer :: ngcx = 27
  integer :: ngcc = 12
  integer :: nmeta = 3
  integer :: ncnl = 3
  character(len=4) :: exc
  character(len=4) :: corr
  character(len=4) :: gradx
  character(len=4) :: gradc
  character(len=4) :: meta
  character(len=4) :: nonlocc

contains
  procedure, pass :: init => funct_type_init
  procedure, pass :: update => funct_type_update
end type funct_type
