['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(us_exx_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( becxx(:), stat=istat )
  call memory_manager('us_exx%alloc', 'becxx', becxx(:), 1, istat)
  allocate( becxx0(:), stat=istat )
  call memory_manager('us_exx%alloc', 'becxx0', becxx0(:), 1, istat)
  allocate( qgm(:,:), stat=istat )
  call memory_manager('us_exx%alloc', 'qgm', qgm(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(us_exx_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(us_exx_type), intent(inout) :: this
  integer :: istat

  deallocate( becxx, stat=istat )
  call memory_manager('us_exx%dealloc', 'becxx', becxx(:), -1, istat)
  deallocate( becxx0, stat=istat )
  call memory_manager('us_exx%dealloc', 'becxx0', becxx0(:), -1, istat)
  deallocate( qgm, stat=istat )
  call memory_manager('us_exx%dealloc', 'qgm', qgm(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

