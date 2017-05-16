['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(symme_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( shell(:), stat=istat )
  call memory_manager('symme%alloc', 'shell', shell, istat)

  allocate( sendcnt(:), stat=istat )
  call memory_manager('symme%alloc', 'sendcnt', sendcnt, istat)

  allocate( recvcnt(:), stat=istat )
  call memory_manager('symme%alloc', 'recvcnt', recvcnt, istat)

  allocate( sdispls(:), stat=istat )
  call memory_manager('symme%alloc', 'sdispls', sdispls, istat)

  allocate( rdispls(:), stat=istat )
  call memory_manager('symme%alloc', 'rdispls', rdispls, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(symme_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
