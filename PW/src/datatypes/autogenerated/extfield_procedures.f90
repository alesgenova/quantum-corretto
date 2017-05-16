['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(extfield_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( forcefield(:,:), stat=istat )
  call memory_manager('extfield%alloc', 'forcefield', forcefield(:,:), 1, istat)
  allocate( forcemono(:,:), stat=istat )
  call memory_manager('extfield%alloc', 'forcemono', forcemono(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(extfield_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(extfield_type), intent(inout) :: this
  integer :: istat

  deallocate( forcefield, stat=istat )
  call memory_manager('extfield%dealloc', 'forcefield', forcefield(:,:), -1, istat)
  deallocate( forcemono, stat=istat )
  call memory_manager('extfield%dealloc', 'forcemono', forcemono(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

