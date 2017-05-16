['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(symm_base_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( irt(:,:), stat=istat )
  call memory_manager('symm_base%alloc', 'irt', irt, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(symm_base_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
