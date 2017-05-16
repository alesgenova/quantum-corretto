type :: funct_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=25) :: dft = 'not set'
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
  integer :: ncnl = 6
  character(len=4) :: exc
  character(len=4) :: corr
  character(len=4) :: gradx
  character(len=4) :: gradc
  character(len=4) :: meta
  character(len=4) :: nonlocc
  character(len=4) :: nonlocc
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type funct_type
