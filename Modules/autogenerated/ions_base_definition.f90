alloc_args = {}
init_args = {"nsp": {"type": "integer", "dimension": null}, "na": {"type": "integer", "dimension": ":"}, "nax": {"type": "integer", "dimension": null}, "nat": {"type": "integer", "dimension": null}, "zv": {"type": "real(dp)", "dimension": ":"}, "amass": {"type": "real(dp)", "dimension": ":"}, "rcmax": {"type": "real(dp)", "dimension": ":"}, "ityp": {"type": "integer", "dimension": ":"}, "tau": {"type": "real(dp)", "dimension": ":,:"}, "vel": {"type": "real(dp)", "dimension": ":,:"}, "tau_srt": {"type": "real(dp)", "dimension": ":,:"}, "vel_srt": {"type": "real(dp)", "dimension": ":,:"}, "ind_srt": {"type": "integer", "dimension": ":"}, "ind_bck": {"type": "integer", "dimension": ":"}, "atm": {"type": "character(len=3)", "dimension": ":"}, "label_srt": {"type": "character(len=3)", "dimension": ":"}, "tau_format": {"type": "character(len=80)", "dimension": null}, "if_pos": {"type": "integer", "dimension": ":,:"}, "iforce": {"type": "integer", "dimension": ":,:"}, "fixatom": {"type": "integer", "dimension": null}, "ndofp": {"type": "integer", "dimension": null}, "ndfrz": {"type": "integer", "dimension": null}, "fricp": {"type": "real(dp)", "dimension": null}, "greasp": {"type": "real(dp)", "dimension": null}, "taui": {"type": "real(dp)", "dimension": ":,:"}, "cdmi": {"type": "real(dp)", "dimension": "3"}, "cdm": {"type": "real(dp)", "dimension": "3"}, "cdms": {"type": "real(dp)", "dimension": "3"}, "extfor": {"type": "real(dp)", "dimension": ":,:"}, "tions_base_init": {"type": "logical", "dimension": null}, "tdebug": {"type": "logical", "dimension": null}}
type :: ions_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nsp = 0
  integer, allocatable, dimension(:) :: na ! dimensions = [":"]
  integer :: nax = 0
  integer :: nat = 0
  real(dp), allocatable, dimension(:) :: zv ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: amass ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: rcmax ! dimensions = [":"]
  integer, allocatable, dimension(:) :: ityp ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: tau ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: vel ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: tau_srt ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: vel_srt ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: ind_srt ! dimensions = [":"]
  integer, allocatable, dimension(:) :: ind_bck ! dimensions = [":"]
  character(len=3), allocatable, dimension(:) :: atm ! dimensions = [":"]
  character(len=3), allocatable, dimension(:) :: label_srt ! dimensions = [":"]
  character(len=80) :: tau_format
  integer, allocatable, dimension(:,:) :: if_pos ! dimensions = [":", ":"]
  integer, allocatable, dimension(:,:) :: iforce ! dimensions = [":", ":"]
  integer :: fixatom = 0
  integer :: ndofp = -1
  integer :: ndfrz = 0
  real(dp) :: fricp
  real(dp) :: greasp
  real(dp), allocatable, dimension(:,:) :: taui ! dimensions = [":", ":"]
  real(dp), dimension(3) :: cdmi
  real(dp), dimension(3) :: cdm
  real(dp), dimension(3) :: cdms
  real(dp), allocatable, dimension(:,:) :: extfor ! dimensions = [":", ":"]
  logical :: tions_base_init = .false.
  logical :: tdebug = .false.
  logical :: tdebug = .false.
contains
  procedure, pass :: alloc => ions_base_type_alloc
  procedure, pass :: init => ions_base_type_init
  procedure, pass :: update => ions_base_type_update
  procedure, pass :: dealloc => ions_base_type_dealloc
end type ions_base_type
