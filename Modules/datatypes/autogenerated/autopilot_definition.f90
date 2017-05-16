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
  integer, dimension(max_event_step) :: event_step
  integer :: current_nfi
  logical :: pilot_p = .false.
  logical :: restart_p = .false.
  logical :: pause_p = .false.
  integer :: pilot_unit = 42
  character(len=256) :: pilot_type
  integer, dimension(max_event_step) :: rule_isave
  integer, dimension(max_event_step) :: rule_iprint
  real(dp), dimension(max_event_step) :: rule_dt
  real(dp), dimension(max_event_step) :: rule_emass
  character(len=80), dimension(max_event_step) :: rule_electron_dynamics
  real(dp), dimension(max_event_step) :: rule_electron_damping
  character(len=80), dimension(max_event_step) :: rule_ion_dynamics
  real(dp), dimension(max_event_step) :: rule_ion_damping
  character(len=80), dimension(max_event_step) :: rule_ion_temperature
  real(dp), dimension(max_event_step) :: rule_tempw
  logical, dimension(max_event_step) :: event_isave
  logical, dimension(max_event_step) :: event_iprint
  logical, dimension(max_event_step) :: event_dt
  logical, dimension(max_event_step) :: event_emass
  logical, dimension(max_event_step) :: event_electron_dynamics
  logical, dimension(max_event_step) :: event_electron_damping
  logical, dimension(max_event_step) :: event_ion_dynamics
  logical, dimension(max_event_step) :: event_ion_damping
  logical, dimension(max_event_step) :: event_ion_temperature
  logical, dimension(max_event_step) :: event_tempw
  logical, dimension(max_event_step) :: event_tempw
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type autopilot_type
