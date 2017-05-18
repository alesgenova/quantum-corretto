['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(control_flags_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( tranp(:), stat=istat )
  call memory_manager('control_flags%alloc', 'tranp', tranp(:), 1, istat)
  allocate( amprp(:), stat=istat )
  call memory_manager('control_flags%alloc', 'amprp', amprp(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(control_flags_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(control_flags_type), intent(inout) :: this
  integer :: istat

  deallocate( tranp, stat=istat )
  call memory_manager('control_flags%dealloc', 'tranp', tranp(:), -1, istat)
  deallocate( amprp, stat=istat )
  call memory_manager('control_flags%dealloc', 'amprp', amprp(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

