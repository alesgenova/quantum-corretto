['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(xdm_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( xenv(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'xenv', xenv(:,:), 1, istat)
  allocate( ienv(:), stat=istat )
  call memory_manager('xdm_module%alloc', 'ienv', ienv(:), 1, istat)
  allocate( lvec(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'lvec', lvec(:,:), 1, istat)
  allocate( alpha(:), stat=istat )
  call memory_manager('xdm_module%alloc', 'alpha', alpha(:), 1, istat)
  allocate( ml(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'ml', ml(:,:), 1, istat)
  allocate( cx(:,:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'cx', cx(:,:,:), 1, istat)
  allocate( rvdw(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'rvdw', rvdw(:,:), 1, istat)
  allocate( fsave(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'fsave', fsave(:,:), 1, istat)
  allocate( ssave(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'ssave', ssave(:,:), 1, istat)
  allocate( rfree(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'rfree', rfree(:,:), 1, istat)
  allocate( w2free(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'w2free', w2free(:,:), 1, istat)
  allocate( rmaxg2(:), stat=istat )
  call memory_manager('xdm_module%alloc', 'rmaxg2', rmaxg2(:), 1, istat)
  allocate( rcore(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'rcore', rcore(:,:), 1, istat)
  allocate( w2core(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'w2core', w2core(:,:), 1, istat)
  allocate( rmaxcore2(:), stat=istat )
  call memory_manager('xdm_module%alloc', 'rmaxcore2', rmaxcore2(:), 1, istat)
  allocate( afree(:), stat=istat )
  call memory_manager('xdm_module%alloc', 'afree', afree(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(xdm_module_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(xdm_module_type), intent(inout) :: this
  integer :: istat

  deallocate( xenv, stat=istat )
  call memory_manager('xdm_module%dealloc', 'xenv', xenv(:,:), -1, istat)
  deallocate( ienv, stat=istat )
  call memory_manager('xdm_module%dealloc', 'ienv', ienv(:), -1, istat)
  deallocate( lvec, stat=istat )
  call memory_manager('xdm_module%dealloc', 'lvec', lvec(:,:), -1, istat)
  deallocate( alpha, stat=istat )
  call memory_manager('xdm_module%dealloc', 'alpha', alpha(:), -1, istat)
  deallocate( ml, stat=istat )
  call memory_manager('xdm_module%dealloc', 'ml', ml(:,:), -1, istat)
  deallocate( cx, stat=istat )
  call memory_manager('xdm_module%dealloc', 'cx', cx(:,:,:), -1, istat)
  deallocate( rvdw, stat=istat )
  call memory_manager('xdm_module%dealloc', 'rvdw', rvdw(:,:), -1, istat)
  deallocate( fsave, stat=istat )
  call memory_manager('xdm_module%dealloc', 'fsave', fsave(:,:), -1, istat)
  deallocate( ssave, stat=istat )
  call memory_manager('xdm_module%dealloc', 'ssave', ssave(:,:), -1, istat)
  deallocate( rfree, stat=istat )
  call memory_manager('xdm_module%dealloc', 'rfree', rfree(:,:), -1, istat)
  deallocate( w2free, stat=istat )
  call memory_manager('xdm_module%dealloc', 'w2free', w2free(:,:), -1, istat)
  deallocate( rmaxg2, stat=istat )
  call memory_manager('xdm_module%dealloc', 'rmaxg2', rmaxg2(:), -1, istat)
  deallocate( rcore, stat=istat )
  call memory_manager('xdm_module%dealloc', 'rcore', rcore(:,:), -1, istat)
  deallocate( w2core, stat=istat )
  call memory_manager('xdm_module%dealloc', 'w2core', w2core(:,:), -1, istat)
  deallocate( rmaxcore2, stat=istat )
  call memory_manager('xdm_module%dealloc', 'rmaxcore2', rmaxcore2(:), -1, istat)
  deallocate( afree, stat=istat )
  call memory_manager('xdm_module%dealloc', 'afree', afree(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

