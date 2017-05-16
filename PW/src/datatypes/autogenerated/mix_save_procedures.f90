['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(mix_save_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( df(:), stat=istat )
  call memory_manager('mix_save%alloc', 'df', df(:), 1, istat)
  allocate( dv(:), stat=istat )
  call memory_manager('mix_save%alloc', 'dv', dv(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(mix_save_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(mix_save_type), intent(inout) :: this
  integer :: istat

  deallocate( df, stat=istat )
  call memory_manager('mix_save%dealloc', 'df', df(:), -1, istat)
  deallocate( dv, stat=istat )
  call memory_manager('mix_save%dealloc', 'dv', dv(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

