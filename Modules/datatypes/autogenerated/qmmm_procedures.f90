['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(qmmm_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( tmp_buf(:,:), stat=istat )
  call memory_manager('qmmm%alloc', 'tmp_buf', tmp_buf(:,:), 1, istat)
  allocate( charge(:), stat=istat )
  call memory_manager('qmmm%alloc', 'charge', charge(:), 1, istat)
  allocate( aradii(:), stat=istat )
  call memory_manager('qmmm%alloc', 'aradii', aradii(:), 1, istat)
  allocate( tau_mm(:,:), stat=istat )
  call memory_manager('qmmm%alloc', 'tau_mm', tau_mm(:,:), 1, istat)
  allocate( force_mm(:,:), stat=istat )
  call memory_manager('qmmm%alloc', 'force_mm', force_mm(:,:), 1, istat)
  allocate( force_qm(:,:), stat=istat )
  call memory_manager('qmmm%alloc', 'force_qm', force_qm(:,:), 1, istat)
  allocate( tau_mask(:), stat=istat )
  call memory_manager('qmmm%alloc', 'tau_mask', tau_mask(:), 1, istat)
  allocate( rc_mm(:), stat=istat )
  call memory_manager('qmmm%alloc', 'rc_mm', rc_mm(:), 1, istat)
  allocate( charge_mm(:), stat=istat )
  call memory_manager('qmmm%alloc', 'charge_mm', charge_mm(:), 1, istat)
  allocate( mass(:), stat=istat )
  call memory_manager('qmmm%alloc', 'mass', mass(:), 1, istat)
  allocate( types(:), stat=istat )
  call memory_manager('qmmm%alloc', 'types', types(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(qmmm_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(qmmm_type), intent(inout) :: this
  integer :: istat

  deallocate( tmp_buf, stat=istat )
  call memory_manager('qmmm%dealloc', 'tmp_buf', tmp_buf(:,:), -1, istat)
  deallocate( charge, stat=istat )
  call memory_manager('qmmm%dealloc', 'charge', charge(:), -1, istat)
  deallocate( aradii, stat=istat )
  call memory_manager('qmmm%dealloc', 'aradii', aradii(:), -1, istat)
  deallocate( tau_mm, stat=istat )
  call memory_manager('qmmm%dealloc', 'tau_mm', tau_mm(:,:), -1, istat)
  deallocate( force_mm, stat=istat )
  call memory_manager('qmmm%dealloc', 'force_mm', force_mm(:,:), -1, istat)
  deallocate( force_qm, stat=istat )
  call memory_manager('qmmm%dealloc', 'force_qm', force_qm(:,:), -1, istat)
  deallocate( tau_mask, stat=istat )
  call memory_manager('qmmm%dealloc', 'tau_mask', tau_mask(:), -1, istat)
  deallocate( rc_mm, stat=istat )
  call memory_manager('qmmm%dealloc', 'rc_mm', rc_mm(:), -1, istat)
  deallocate( charge_mm, stat=istat )
  call memory_manager('qmmm%dealloc', 'charge_mm', charge_mm(:), -1, istat)
  deallocate( mass, stat=istat )
  call memory_manager('qmmm%dealloc', 'mass', mass(:), -1, istat)
  deallocate( types, stat=istat )
  call memory_manager('qmmm%dealloc', 'types', types(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

