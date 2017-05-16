['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(xdm_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( xenv(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'xenv', xenv, istat)

  allocate( ienv(:), stat=istat )
  call memory_manager('xdm_module%alloc', 'ienv', ienv, istat)

  allocate( lvec(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'lvec', lvec, istat)

  allocate( alpha(:), stat=istat )
  call memory_manager('xdm_module%alloc', 'alpha', alpha, istat)

  allocate( ml(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'ml', ml, istat)

  allocate( cx(:,:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'cx', cx, istat)

  allocate( rvdw(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'rvdw', rvdw, istat)

  allocate( fsave(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'fsave', fsave, istat)

  allocate( ssave(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'ssave', ssave, istat)

  allocate( rfree(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'rfree', rfree, istat)

  allocate( w2free(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'w2free', w2free, istat)

  allocate( rmaxg2(:), stat=istat )
  call memory_manager('xdm_module%alloc', 'rmaxg2', rmaxg2, istat)

  allocate( rcore(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'rcore', rcore, istat)

  allocate( w2core(:,:), stat=istat )
  call memory_manager('xdm_module%alloc', 'w2core', w2core, istat)

  allocate( rmaxcore2(:), stat=istat )
  call memory_manager('xdm_module%alloc', 'rmaxcore2', rmaxcore2, istat)

  allocate( afree(:), stat=istat )
  call memory_manager('xdm_module%alloc', 'afree', afree, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(xdm_module_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
