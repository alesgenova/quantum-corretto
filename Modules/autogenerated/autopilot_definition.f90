alloc_args = {}
init_args = {"MAX_INT": {"type": "integer", "dimension": null}, "max_event_step": {"type": "integer", "dimension": null}, "n_auto_vars": {"type": "integer", "dimension": null}, "n_events": {"type": "integer", "dimension": null}, "event_index": {"type": "integer", "dimension": null}, "max_rules": {"type": "integer", "dimension": null}, "n_rules": {"type": "integer", "dimension": null}, "event_step": {"type": "integer", "dimension": ":,:,:"}, "current_nfi": {"type": "integer", "dimension": null}, "pilot_p": {"type": "logical", "dimension": null}, "restart_p": {"type": "logical", "dimension": null}, "pause_p": {"type": "logical", "dimension": null}, "pilot_unit": {"type": "integer", "dimension": null}, "pilot_type": {"type": "character(len=256)", "dimension": null}, "rule_isave": {"type": "integer", "dimension": ":,:,:"}, "rule_iprint": {"type": "integer", "dimension": ":,:,:"}, "rule_dt": {"type": "real(dp)", "dimension": ":,:,:"}, "rule_emass": {"type": "real(dp)", "dimension": ":,:,:"}, "rule_electron_dynamics": {"type": "character(len=80)", "dimension": ":,:,:"}, "rule_electron_damping": {"type": "real(dp)", "dimension": ":,:,:"}, "rule_ion_dynamics": {"type": "character(len=80)", "dimension": ":,:,:"}, "rule_ion_damping": {"type": "real(dp)", "dimension": ":,:,:"}, "rule_ion_temperature": {"type": "character(len=80)", "dimension": ":,:,:"}, "rule_tempw": {"type": "real(dp)", "dimension": ":,:,:"}, "event_isave": {"type": "logical", "dimension": ":,:,:"}, "event_iprint": {"type": "logical", "dimension": ":,:,:"}, "event_dt": {"type": "logical", "dimension": ":,:,:"}, "event_emass": {"type": "logical", "dimension": ":,:,:"}, "event_electron_dynamics": {"type": "logical", "dimension": ":,:,:"}, "event_electron_damping": {"type": "logical", "dimension": ":,:,:"}, "event_ion_dynamics": {"type": "logical", "dimension": ":,:,:"}, "event_ion_damping": {"type": "logical", "dimension": ":,:,:"}, "event_ion_temperature": {"type": "logical", "dimension": ":,:,:"}, "event_tempw": {"type": "logical", "dimension": ":,:,:"}}
type :: autopilot_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: MAX_INT = huge(1)
  integer :: max_event_step = 32
  integer :: n_auto_vars = 10
  integer :: n_events
  integer :: event_index = 0
  integer :: max_rules = 320
  integer :: n_rules
  integer, allocatable, dimension(:,:,:) :: event_step ! dimensions = [:,:,:]
  integer :: current_nfi
  logical :: pilot_p = .false.
  logical :: restart_p = .false.
  logical :: pause_p = .false.
  integer :: pilot_unit = 42
  character(len=256) :: pilot_type
  integer, allocatable, dimension(:,:,:) :: rule_isave ! dimensions = [:,:,:]
  integer, allocatable, dimension(:,:,:) :: rule_iprint ! dimensions = [:,:,:]
  real(dp), allocatable, dimension(:,:,:) :: rule_dt ! dimensions = [:,:,:]
  real(dp), allocatable, dimension(:,:,:) :: rule_emass ! dimensions = [:,:,:]
  character(len=80), allocatable, dimension(:,:,:) :: rule_electron_dynamics ! dimensions = [:,:,:]
  real(dp), allocatable, dimension(:,:,:) :: rule_electron_damping ! dimensions = [:,:,:]
  character(len=80), allocatable, dimension(:,:,:) :: rule_ion_dynamics ! dimensions = [:,:,:]
  real(dp), allocatable, dimension(:,:,:) :: rule_ion_damping ! dimensions = [:,:,:]
  character(len=80), allocatable, dimension(:,:,:) :: rule_ion_temperature ! dimensions = [:,:,:]
  real(dp), allocatable, dimension(:,:,:) :: rule_tempw ! dimensions = [:,:,:]
  logical, allocatable, dimension(:,:,:) :: event_isave ! dimensions = [:,:,:]
  logical, allocatable, dimension(:,:,:) :: event_iprint ! dimensions = [:,:,:]
  logical, allocatable, dimension(:,:,:) :: event_dt ! dimensions = [:,:,:]
  logical, allocatable, dimension(:,:,:) :: event_emass ! dimensions = [:,:,:]
  logical, allocatable, dimension(:,:,:) :: event_electron_dynamics ! dimensions = [:,:,:]
  logical, allocatable, dimension(:,:,:) :: event_electron_damping ! dimensions = [:,:,:]
  logical, allocatable, dimension(:,:,:) :: event_ion_dynamics ! dimensions = [:,:,:]
  logical, allocatable, dimension(:,:,:) :: event_ion_damping ! dimensions = [:,:,:]
  logical, allocatable, dimension(:,:,:) :: event_ion_temperature ! dimensions = [:,:,:]
  logical, allocatable, dimension(:,:,:) :: event_tempw ! dimensions = [:,:,:]
  logical, allocatable, dimension(:,:,:) :: event_tempw ! dimensions = [:,:,:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type autopilot_type
