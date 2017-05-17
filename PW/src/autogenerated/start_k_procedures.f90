['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(start_k_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( wk_start(:), stat=istat )
  call memory_manager('start_k%alloc', 'wk_start', wk_start(:), 1, istat)
  allocate( xk_start(:,:), stat=istat )
  call memory_manager('start_k%alloc', 'xk_start', xk_start(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(start_k_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(start_k_type), intent(inout) :: this
  integer :: istat

  deallocate( wk_start, stat=istat )
  call memory_manager('start_k%dealloc', 'wk_start', wk_start(:), -1, istat)
  deallocate( xk_start, stat=istat )
  call memory_manager('start_k%dealloc', 'xk_start', xk_start(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

