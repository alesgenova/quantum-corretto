alloc_args = {}
init_args = {"tmp_dir": {"type": "character(len=256)", "dimension": null}, "wfc_dir": {"type": "character(len=256)", "dimension": null}, "prefix": {"type": "character(len=256)", "dimension": null}, "nd_nmbr": {"type": "character(len=6)", "dimension": null}, "pseudo_dir": {"type": "character(len=256)", "dimension": null}, "pseudo_dir_cur": {"type": "character(len=256)", "dimension": null}, "psfile": {"type": "character(len=256)", "dimension": ":"}, "qexml_version": {"type": "character(len=256)", "dimension": null}, "qexml_version_init": {"type": "logical", "dimension": null}, "qexsd_fmt": {"type": "character(len=256)", "dimension": null}, "qexsd_version": {"type": "character(len=256)", "dimension": null}, "qexsd_init": {"type": "logical", "dimension": null}, "input_drho": {"type": "character(len=256)", "dimension": null}, "output_drho": {"type": "character(len=256)", "dimension": null}, "crash_file": {"type": "character(len=5)", "dimension": null}, "exit_file": {"type": "character(len=261)", "dimension": null}, "xmlpun": {"type": "character(len=13)", "dimension": null}, "xmlpun_schema": {"type": "character(len=20)", "dimension": null}, "iunres": {"type": "integer", "dimension": null}, "iunpun": {"type": "integer", "dimension": null}, "iunwfc": {"type": "integer", "dimension": null}, "iunoldwfc": {"type": "integer", "dimension": null}, "iunoldwfc2": {"type": "integer", "dimension": null}, "iunhub": {"type": "integer", "dimension": null}, "iunsat": {"type": "integer", "dimension": null}, "iunmix": {"type": "integer", "dimension": null}, "iunwfc_exx": {"type": "integer", "dimension": null}, "iunexit": {"type": "integer", "dimension": null}, "iunupdate": {"type": "integer", "dimension": null}, "iunnewimage": {"type": "integer", "dimension": null}, "iunlock": {"type": "integer", "dimension": null}, "iunbfgs": {"type": "integer", "dimension": null}, "iuntmp": {"type": "integer", "dimension": null}, "nwordwfc": {"type": "integer", "dimension": null}, "nwordatwfc": {"type": "integer", "dimension": null}, "nwordwfcU": {"type": "integer", "dimension": null}, "nwordwann": {"type": "integer", "dimension": null}, "iunefield": {"type": "integer", "dimension": null}, "iunefieldm": {"type": "integer", "dimension": null}, "iunefieldp": {"type": "integer", "dimension": null}, "iunwpp": {"type": "integer", "dimension": null}, "iunwf": {"type": "integer", "dimension": null}, "nwordwpp": {"type": "integer", "dimension": null}, "nwordwf": {"type": "integer", "dimension": null}}
type :: io_files_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=256) :: tmp_dir = './'
  character(len=256) :: wfc_dir = 'undefined'
  character(len=256) :: prefix = 'os'
  character(len=6) :: nd_nmbr = '000000'
  character(len=256) :: pseudo_dir = './'
  character(len=256) :: pseudo_dir_cur = ' '
  character(len=256), allocatable, dimension(:) :: psfile ! dimensions = [":"]
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

contains
  procedure, pass :: alloc => io_files_type_alloc
  procedure, pass :: init => io_files_type_init
  procedure, pass :: update => io_files_type_update
  procedure, pass :: dealloc => io_files_type_dealloc
end type io_files_type
