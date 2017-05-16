['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wvfct_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( et(:,:), stat=istat )
  call memory_manager('wvfct%alloc', 'et', et, istat)

  allocate( wg(:,:), stat=istat )
  call memory_manager('wvfct%alloc', 'wg', wg, istat)

  allocate( g2kin(:), stat=istat )
  call memory_manager('wvfct%alloc', 'g2kin', g2kin, istat)

  allocate( btype(:,:), stat=istat )
  call memory_manager('wvfct%alloc', 'btype', btype, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wvfct_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
