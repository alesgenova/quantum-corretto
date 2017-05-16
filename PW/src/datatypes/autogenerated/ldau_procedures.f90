['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(ldau_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( wfcU(:,:), stat=istat )
  call memory_manager('ldau%alloc', 'wfcU', wfcU, istat)

  allocate( d_spin_ldau(:,:,:), stat=istat )
  call memory_manager('ldau%alloc', 'd_spin_ldau', d_spin_ldau, istat)

  allocate( oatwfc(:), stat=istat )
  call memory_manager('ldau%alloc', 'oatwfc', oatwfc, istat)

  allocate( offsetU(:), stat=istat )
  call memory_manager('ldau%alloc', 'offsetU', offsetU, istat)

  allocate( q_ae(:,:,:), stat=istat )
  call memory_manager('ldau%alloc', 'q_ae', q_ae, istat)

  allocate( q_ps(:,:,:), stat=istat )
  call memory_manager('ldau%alloc', 'q_ps', q_ps, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(ldau_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
