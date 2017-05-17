['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(symme_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( shell(:), stat=istat )
  call memory_manager('symme%alloc', 'shell', shell(:), 1, istat)
  allocate( sendcnt(:), stat=istat )
  call memory_manager('symme%alloc', 'sendcnt', sendcnt(:), 1, istat)
  allocate( recvcnt(:), stat=istat )
  call memory_manager('symme%alloc', 'recvcnt', recvcnt(:), 1, istat)
  allocate( sdispls(:), stat=istat )
  call memory_manager('symme%alloc', 'sdispls', sdispls(:), 1, istat)
  allocate( rdispls(:), stat=istat )
  call memory_manager('symme%alloc', 'rdispls', rdispls(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(symme_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(symme_type), intent(inout) :: this
  integer :: istat

  deallocate( shell, stat=istat )
  call memory_manager('symme%dealloc', 'shell', shell(:), -1, istat)
  deallocate( sendcnt, stat=istat )
  call memory_manager('symme%dealloc', 'sendcnt', sendcnt(:), -1, istat)
  deallocate( recvcnt, stat=istat )
  call memory_manager('symme%dealloc', 'recvcnt', recvcnt(:), -1, istat)
  deallocate( sdispls, stat=istat )
  call memory_manager('symme%dealloc', 'sdispls', sdispls(:), -1, istat)
  deallocate( rdispls, stat=istat )
  call memory_manager('symme%dealloc', 'rdispls', rdispls(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

