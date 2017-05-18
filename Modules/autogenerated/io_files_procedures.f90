['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(io_files_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( psfile(:), stat=istat )
  call memory_manager('io_files%alloc', 'psfile', psfile(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(io_files_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(io_files_type), intent(inout) :: this
  integer :: istat

  deallocate( psfile, stat=istat )
  call memory_manager('io_files%dealloc', 'psfile', psfile(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

