['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(gvecw_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( g2kin(:), stat=istat )
  call memory_manager('gvecw%alloc', 'g2kin', g2kin(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(gvecw_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(gvecw_type), intent(inout) :: this
  integer :: istat

  deallocate( g2kin, stat=istat )
  call memory_manager('gvecw%dealloc', 'g2kin', g2kin(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

