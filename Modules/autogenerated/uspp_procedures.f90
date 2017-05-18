['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(uspp_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( lpx(:,:), stat=istat )
  call memory_manager('uspp%alloc', 'lpx', lpx(:,:), 1, istat)
  allocate( lpl(:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'lpl', lpl(:,:,:), 1, istat)
  allocate( ap(:,:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'ap', ap(:,:,:,:), 1, istat)
  allocate( indv(:,:), stat=istat )
  call memory_manager('uspp%alloc', 'indv', indv(:,:), 1, istat)
  allocate( nhtol(:,:), stat=istat )
  call memory_manager('uspp%alloc', 'nhtol', nhtol(:,:), 1, istat)
  allocate( nhtolm(:,:), stat=istat )
  call memory_manager('uspp%alloc', 'nhtolm', nhtolm(:,:), 1, istat)
  allocate( ijtoh(:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'ijtoh', ijtoh(:,:,:), 1, istat)
  allocate( indv_ijkb0(:), stat=istat )
  call memory_manager('uspp%alloc', 'indv_ijkb0', indv_ijkb0(:), 1, istat)
  allocate( vkb(:,:), stat=istat )
  call memory_manager('uspp%alloc', 'vkb', vkb(:,:), 1, istat)
  allocate( becsum(:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'becsum', becsum(:,:,:), 1, istat)
  allocate( dvan(:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'dvan', dvan(:,:,:), 1, istat)
  allocate( deeq(:,:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'deeq', deeq(:,:,:,:), 1, istat)
  allocate( qq(:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'qq', qq(:,:,:), 1, istat)
  allocate( nhtoj(:,:), stat=istat )
  call memory_manager('uspp%alloc', 'nhtoj', nhtoj(:,:), 1, istat)
  allocate( qq_so(:,:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'qq_so', qq_so(:,:,:,:), 1, istat)
  allocate( dvan_so(:,:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'dvan_so', dvan_so(:,:,:,:), 1, istat)
  allocate( deeq_nc(:,:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'deeq_nc', deeq_nc(:,:,:,:), 1, istat)
  allocate( beta(:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'beta', beta(:,:,:), 1, istat)
  allocate( dbeta(:,:,:,:,:), stat=istat )
  call memory_manager('uspp%alloc', 'dbeta', dbeta(:,:,:,:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(uspp_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(uspp_type), intent(inout) :: this
  integer :: istat

  deallocate( lpx, stat=istat )
  call memory_manager('uspp%dealloc', 'lpx', lpx(:,:), -1, istat)
  deallocate( lpl, stat=istat )
  call memory_manager('uspp%dealloc', 'lpl', lpl(:,:,:), -1, istat)
  deallocate( ap, stat=istat )
  call memory_manager('uspp%dealloc', 'ap', ap(:,:,:,:), -1, istat)
  deallocate( indv, stat=istat )
  call memory_manager('uspp%dealloc', 'indv', indv(:,:), -1, istat)
  deallocate( nhtol, stat=istat )
  call memory_manager('uspp%dealloc', 'nhtol', nhtol(:,:), -1, istat)
  deallocate( nhtolm, stat=istat )
  call memory_manager('uspp%dealloc', 'nhtolm', nhtolm(:,:), -1, istat)
  deallocate( ijtoh, stat=istat )
  call memory_manager('uspp%dealloc', 'ijtoh', ijtoh(:,:,:), -1, istat)
  deallocate( indv_ijkb0, stat=istat )
  call memory_manager('uspp%dealloc', 'indv_ijkb0', indv_ijkb0(:), -1, istat)
  deallocate( vkb, stat=istat )
  call memory_manager('uspp%dealloc', 'vkb', vkb(:,:), -1, istat)
  deallocate( becsum, stat=istat )
  call memory_manager('uspp%dealloc', 'becsum', becsum(:,:,:), -1, istat)
  deallocate( dvan, stat=istat )
  call memory_manager('uspp%dealloc', 'dvan', dvan(:,:,:), -1, istat)
  deallocate( deeq, stat=istat )
  call memory_manager('uspp%dealloc', 'deeq', deeq(:,:,:,:), -1, istat)
  deallocate( qq, stat=istat )
  call memory_manager('uspp%dealloc', 'qq', qq(:,:,:), -1, istat)
  deallocate( nhtoj, stat=istat )
  call memory_manager('uspp%dealloc', 'nhtoj', nhtoj(:,:), -1, istat)
  deallocate( qq_so, stat=istat )
  call memory_manager('uspp%dealloc', 'qq_so', qq_so(:,:,:,:), -1, istat)
  deallocate( dvan_so, stat=istat )
  call memory_manager('uspp%dealloc', 'dvan_so', dvan_so(:,:,:,:), -1, istat)
  deallocate( deeq_nc, stat=istat )
  call memory_manager('uspp%dealloc', 'deeq_nc', deeq_nc(:,:,:,:), -1, istat)
  deallocate( beta, stat=istat )
  call memory_manager('uspp%dealloc', 'beta', beta(:,:,:), -1, istat)
  deallocate( dbeta, stat=istat )
  call memory_manager('uspp%dealloc', 'dbeta', dbeta(:,:,:,:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

