['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(force_mod_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( force(:,:), stat=istat )
  call memory_manager('force_mod%alloc', 'force', force, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(force_mod_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
