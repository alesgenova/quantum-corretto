['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(scf_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( vltot(:), stat=istat )
  call memory_manager('scf%alloc', 'vltot', vltot(:), 1, istat)
  allocate( vrs(:,:), stat=istat )
  call memory_manager('scf%alloc', 'vrs', vrs(:,:), 1, istat)
  allocate( rho_core(:), stat=istat )
  call memory_manager('scf%alloc', 'rho_core', rho_core(:), 1, istat)
  allocate( kedtau(:,:), stat=istat )
  call memory_manager('scf%alloc', 'kedtau', kedtau(:,:), 1, istat)
  allocate( rhog_core(:), stat=istat )
  call memory_manager('scf%alloc', 'rhog_core', rhog_core(:), 1, istat)
  allocate( io_buffer(:), stat=istat )
  call memory_manager('scf%alloc', 'io_buffer', io_buffer(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(scf_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(scf_type), intent(inout) :: this
  integer :: istat

  deallocate( vltot, stat=istat )
  call memory_manager('scf%dealloc', 'vltot', vltot(:), -1, istat)
  deallocate( vrs, stat=istat )
  call memory_manager('scf%dealloc', 'vrs', vrs(:,:), -1, istat)
  deallocate( rho_core, stat=istat )
  call memory_manager('scf%dealloc', 'rho_core', rho_core(:), -1, istat)
  deallocate( kedtau, stat=istat )
  call memory_manager('scf%dealloc', 'kedtau', kedtau(:,:), -1, istat)
  deallocate( rhog_core, stat=istat )
  call memory_manager('scf%dealloc', 'rhog_core', rhog_core(:), -1, istat)
  deallocate( io_buffer, stat=istat )
  call memory_manager('scf%dealloc', 'io_buffer', io_buffer(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

