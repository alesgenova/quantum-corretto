['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(us_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( qrad(:,:,:,:), stat=istat )
  call memory_manager('us%alloc', 'qrad', qrad, istat)

  allocate( tab(:,:,:), stat=istat )
  call memory_manager('us%alloc', 'tab', tab, istat)

  allocate( tab_at(:,:,:), stat=istat )
  call memory_manager('us%alloc', 'tab_at', tab_at, istat)

  allocate( tab_d2y(:,:,:), stat=istat )
  call memory_manager('us%alloc', 'tab_d2y', tab_d2y, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(us_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
