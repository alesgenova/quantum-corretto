['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(ktetra_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( tetra(:,:), stat=istat )
  call memory_manager('ktetra%alloc', 'tetra', tetra(:,:), 1, istat)
  allocate( wlsm(:,:), stat=istat )
  call memory_manager('ktetra%alloc', 'wlsm', wlsm(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(ktetra_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(ktetra_type), intent(inout) :: this
  integer :: istat

  deallocate( tetra, stat=istat )
  call memory_manager('ktetra%dealloc', 'tetra', tetra(:,:), -1, istat)
  deallocate( wlsm, stat=istat )
  call memory_manager('ktetra%dealloc', 'wlsm', wlsm(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

