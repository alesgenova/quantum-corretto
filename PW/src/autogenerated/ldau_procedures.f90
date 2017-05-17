['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(ldau_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( wfcU(:,:), stat=istat )
  call memory_manager('ldau%alloc', 'wfcU', wfcU(:,:), 1, istat)
  allocate( d_spin_ldau(:,:,:), stat=istat )
  call memory_manager('ldau%alloc', 'd_spin_ldau', d_spin_ldau(:,:,:), 1, istat)
  allocate( oatwfc(:), stat=istat )
  call memory_manager('ldau%alloc', 'oatwfc', oatwfc(:), 1, istat)
  allocate( offsetU(:), stat=istat )
  call memory_manager('ldau%alloc', 'offsetU', offsetU(:), 1, istat)
  allocate( q_ae(:,:,:), stat=istat )
  call memory_manager('ldau%alloc', 'q_ae', q_ae(:,:,:), 1, istat)
  allocate( q_ps(:,:,:), stat=istat )
  call memory_manager('ldau%alloc', 'q_ps', q_ps(:,:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(ldau_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(ldau_type), intent(inout) :: this
  integer :: istat

  deallocate( wfcU, stat=istat )
  call memory_manager('ldau%dealloc', 'wfcU', wfcU(:,:), -1, istat)
  deallocate( d_spin_ldau, stat=istat )
  call memory_manager('ldau%dealloc', 'd_spin_ldau', d_spin_ldau(:,:,:), -1, istat)
  deallocate( oatwfc, stat=istat )
  call memory_manager('ldau%dealloc', 'oatwfc', oatwfc(:), -1, istat)
  deallocate( offsetU, stat=istat )
  call memory_manager('ldau%dealloc', 'offsetU', offsetU(:), -1, istat)
  deallocate( q_ae, stat=istat )
  call memory_manager('ldau%dealloc', 'q_ae', q_ae(:,:,:), -1, istat)
  deallocate( q_ps, stat=istat )
  call memory_manager('ldau%dealloc', 'q_ps', q_ps(:,:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

