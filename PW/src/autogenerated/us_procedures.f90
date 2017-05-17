['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(us_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( qrad(:,:,:,:), stat=istat )
  call memory_manager('us%alloc', 'qrad', qrad(:,:,:,:), 1, istat)
  allocate( tab(:,:,:), stat=istat )
  call memory_manager('us%alloc', 'tab', tab(:,:,:), 1, istat)
  allocate( tab_at(:,:,:), stat=istat )
  call memory_manager('us%alloc', 'tab_at', tab_at(:,:,:), 1, istat)
  allocate( tab_d2y(:,:,:), stat=istat )
  call memory_manager('us%alloc', 'tab_d2y', tab_d2y(:,:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(us_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(us_type), intent(inout) :: this
  integer :: istat

  deallocate( qrad, stat=istat )
  call memory_manager('us%dealloc', 'qrad', qrad(:,:,:,:), -1, istat)
  deallocate( tab, stat=istat )
  call memory_manager('us%dealloc', 'tab', tab(:,:,:), -1, istat)
  deallocate( tab_at, stat=istat )
  call memory_manager('us%dealloc', 'tab_at', tab_at(:,:,:), -1, istat)
  deallocate( tab_d2y, stat=istat )
  call memory_manager('us%dealloc', 'tab_d2y', tab_d2y(:,:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

