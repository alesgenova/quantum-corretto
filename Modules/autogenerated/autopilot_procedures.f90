['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(autopilot_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( event_step(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'event_step', event_step(:,:,:), 1, istat)
  allocate( rule_isave(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'rule_isave', rule_isave(:,:,:), 1, istat)
  allocate( rule_iprint(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'rule_iprint', rule_iprint(:,:,:), 1, istat)
  allocate( rule_dt(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'rule_dt', rule_dt(:,:,:), 1, istat)
  allocate( rule_emass(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'rule_emass', rule_emass(:,:,:), 1, istat)
  allocate( rule_electron_dynamics(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'rule_electron_dynamics', rule_electron_dynamics(:,:,:), 1, istat)
  allocate( rule_electron_damping(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'rule_electron_damping', rule_electron_damping(:,:,:), 1, istat)
  allocate( rule_ion_dynamics(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'rule_ion_dynamics', rule_ion_dynamics(:,:,:), 1, istat)
  allocate( rule_ion_damping(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'rule_ion_damping', rule_ion_damping(:,:,:), 1, istat)
  allocate( rule_ion_temperature(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'rule_ion_temperature', rule_ion_temperature(:,:,:), 1, istat)
  allocate( rule_tempw(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'rule_tempw', rule_tempw(:,:,:), 1, istat)
  allocate( event_isave(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'event_isave', event_isave(:,:,:), 1, istat)
  allocate( event_iprint(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'event_iprint', event_iprint(:,:,:), 1, istat)
  allocate( event_dt(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'event_dt', event_dt(:,:,:), 1, istat)
  allocate( event_emass(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'event_emass', event_emass(:,:,:), 1, istat)
  allocate( event_electron_dynamics(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'event_electron_dynamics', event_electron_dynamics(:,:,:), 1, istat)
  allocate( event_electron_damping(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'event_electron_damping', event_electron_damping(:,:,:), 1, istat)
  allocate( event_ion_dynamics(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'event_ion_dynamics', event_ion_dynamics(:,:,:), 1, istat)
  allocate( event_ion_damping(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'event_ion_damping', event_ion_damping(:,:,:), 1, istat)
  allocate( event_ion_temperature(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'event_ion_temperature', event_ion_temperature(:,:,:), 1, istat)
  allocate( event_tempw(:,:,:), stat=istat )
  call memory_manager('autopilot%alloc', 'event_tempw', event_tempw(:,:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(autopilot_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(autopilot_type), intent(inout) :: this
  integer :: istat

  deallocate( event_step, stat=istat )
  call memory_manager('autopilot%dealloc', 'event_step', event_step(:,:,:), -1, istat)
  deallocate( rule_isave, stat=istat )
  call memory_manager('autopilot%dealloc', 'rule_isave', rule_isave(:,:,:), -1, istat)
  deallocate( rule_iprint, stat=istat )
  call memory_manager('autopilot%dealloc', 'rule_iprint', rule_iprint(:,:,:), -1, istat)
  deallocate( rule_dt, stat=istat )
  call memory_manager('autopilot%dealloc', 'rule_dt', rule_dt(:,:,:), -1, istat)
  deallocate( rule_emass, stat=istat )
  call memory_manager('autopilot%dealloc', 'rule_emass', rule_emass(:,:,:), -1, istat)
  deallocate( rule_electron_dynamics, stat=istat )
  call memory_manager('autopilot%dealloc', 'rule_electron_dynamics', rule_electron_dynamics(:,:,:), -1, istat)
  deallocate( rule_electron_damping, stat=istat )
  call memory_manager('autopilot%dealloc', 'rule_electron_damping', rule_electron_damping(:,:,:), -1, istat)
  deallocate( rule_ion_dynamics, stat=istat )
  call memory_manager('autopilot%dealloc', 'rule_ion_dynamics', rule_ion_dynamics(:,:,:), -1, istat)
  deallocate( rule_ion_damping, stat=istat )
  call memory_manager('autopilot%dealloc', 'rule_ion_damping', rule_ion_damping(:,:,:), -1, istat)
  deallocate( rule_ion_temperature, stat=istat )
  call memory_manager('autopilot%dealloc', 'rule_ion_temperature', rule_ion_temperature(:,:,:), -1, istat)
  deallocate( rule_tempw, stat=istat )
  call memory_manager('autopilot%dealloc', 'rule_tempw', rule_tempw(:,:,:), -1, istat)
  deallocate( event_isave, stat=istat )
  call memory_manager('autopilot%dealloc', 'event_isave', event_isave(:,:,:), -1, istat)
  deallocate( event_iprint, stat=istat )
  call memory_manager('autopilot%dealloc', 'event_iprint', event_iprint(:,:,:), -1, istat)
  deallocate( event_dt, stat=istat )
  call memory_manager('autopilot%dealloc', 'event_dt', event_dt(:,:,:), -1, istat)
  deallocate( event_emass, stat=istat )
  call memory_manager('autopilot%dealloc', 'event_emass', event_emass(:,:,:), -1, istat)
  deallocate( event_electron_dynamics, stat=istat )
  call memory_manager('autopilot%dealloc', 'event_electron_dynamics', event_electron_dynamics(:,:,:), -1, istat)
  deallocate( event_electron_damping, stat=istat )
  call memory_manager('autopilot%dealloc', 'event_electron_damping', event_electron_damping(:,:,:), -1, istat)
  deallocate( event_ion_dynamics, stat=istat )
  call memory_manager('autopilot%dealloc', 'event_ion_dynamics', event_ion_dynamics(:,:,:), -1, istat)
  deallocate( event_ion_damping, stat=istat )
  call memory_manager('autopilot%dealloc', 'event_ion_damping', event_ion_damping(:,:,:), -1, istat)
  deallocate( event_ion_temperature, stat=istat )
  call memory_manager('autopilot%dealloc', 'event_ion_temperature', event_ion_temperature(:,:,:), -1, istat)
  deallocate( event_tempw, stat=istat )
  call memory_manager('autopilot%dealloc', 'event_tempw', event_tempw(:,:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

