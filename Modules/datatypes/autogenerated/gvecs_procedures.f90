['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(gvecs_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( nls(:), stat=istat )
  call memory_manager('gvecs%alloc', 'nls', nls(:), 1, istat)
  allocate( nlsm(:), stat=istat )
  call memory_manager('gvecs%alloc', 'nlsm', nlsm(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(gvecs_type), intent(inout) :: this
  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(gvecs_type), intent(inout) :: this
  integer :: istat

  deallocate( nls, stat=istat )
  call memory_manager('gvecs%dealloc', 'nls', nls(:), -1, istat)
  deallocate( nlsm, stat=istat )
  call memory_manager('gvecs%dealloc', 'nlsm', nlsm(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

