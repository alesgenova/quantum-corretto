['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(martyna_tuckerman_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( wg_corr(:), stat=istat )
  call memory_manager('martyna_tuckerman%alloc', 'wg_corr', wg_corr, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(martyna_tuckerman_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
