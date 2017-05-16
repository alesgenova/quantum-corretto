['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(uspp_param_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( upf(:), stat=istat )
  call memory_manager('uspp_param%alloc', 'upf', upf(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(uspp_param_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(uspp_param_type), intent(inout) :: this
  integer :: istat

  deallocate( upf, stat=istat )
  call memory_manager('uspp_param%dealloc', 'upf', upf(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

