['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wvfct_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( et(:,:), stat=istat )
  call memory_manager('wvfct%alloc', 'et', et(:,:), 1, istat)
  allocate( wg(:,:), stat=istat )
  call memory_manager('wvfct%alloc', 'wg', wg(:,:), 1, istat)
  allocate( g2kin(:), stat=istat )
  call memory_manager('wvfct%alloc', 'g2kin', g2kin(:), 1, istat)
  allocate( btype(:,:), stat=istat )
  call memory_manager('wvfct%alloc', 'btype', btype(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wvfct_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wvfct_type), intent(inout) :: this
  integer :: istat

  deallocate( et, stat=istat )
  call memory_manager('wvfct%dealloc', 'et', et(:,:), -1, istat)
  deallocate( wg, stat=istat )
  call memory_manager('wvfct%dealloc', 'wg', wg(:,:), -1, istat)
  deallocate( g2kin, stat=istat )
  call memory_manager('wvfct%dealloc', 'g2kin', g2kin(:), -1, istat)
  deallocate( btype, stat=istat )
  call memory_manager('wvfct%dealloc', 'btype', btype(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

