['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(gvecs_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( nls(:), stat=istat )
  call memory_manager('gvecs%alloc', 'nls', nls, istat)
  allocate( nlsm(:), stat=istat )
  call memory_manager('gvecs%alloc', 'nlsm', nlsm, istat)
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(gvecs_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
