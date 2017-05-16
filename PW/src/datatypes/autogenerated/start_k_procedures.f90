['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(start_k_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( wk_start(:), stat=istat )
  call memory_manager('start_k%alloc', 'wk_start', wk_start, istat)

  allocate( xk_start(:,:), stat=istat )
  call memory_manager('start_k%alloc', 'xk_start', xk_start, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(start_k_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
