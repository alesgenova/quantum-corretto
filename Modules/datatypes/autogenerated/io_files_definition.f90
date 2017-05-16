type :: io_files_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=256) :: tmp_dir = './'
  character(len=256) :: wfc_dir = 'undefined'
  character(len=256) :: prefix = 'os'
  character(len=6) :: nd_nmbr = '000000'
  character(len=256) :: pseudo_dir = './'
  character(len=256) :: pseudo_dir_cur = ' '
  character(len=256), dimension(ntypx) :: psfile = 'upf'
  character(len=256) :: qexml_version = ' '
  logical :: qexml_version_init = .false.
  character(len=256) :: qexsd_fmt = ' '
  character(len=256) :: qexsd_version = ' '
  logical :: qexsd_init = .false.
  character(len=256) :: input_drho = ' '
  character(len=256) :: output_drho = ' '
  character(len=5) :: crash_file = 'crash'
  character(len=261) :: exit_file = 'os.exit'
  character(len=13) :: xmlpun = 'data-file.xml'
  character(len=20) :: xmlpun_schema = 'data-file-schema.xml'
  integer :: iunres = 1
  integer :: iunpun = 4
  integer :: iunwfc = 10
  integer :: iunoldwfc = 11
  integer :: iunoldwfc2 = 12
  integer :: iunhub = 13
  integer :: iunsat = 14
  integer :: iunmix = 15
  integer :: iunwfc_exx = 16
  integer :: iunexit = 26
  integer :: iunupdate = 27
  integer :: iunnewimage = 28
  integer :: iunlock = 29
  integer :: iunbfgs = 30
  integer :: iuntmp = 90
  integer :: nwordwfc = 2
  integer :: nwordatwfc = 2
  integer :: nwordwfcU = 2
  integer :: nwordwann = 2
  integer :: iunefield = 31
  integer :: iunefieldm = 32
  integer :: iunefieldp = 33
  integer :: iunwpp = 113
  integer :: iunwf = 114
  integer :: nwordwpp = 2
  integer :: nwordwf = 2
  integer :: nwordwf = 2
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type io_files_type
