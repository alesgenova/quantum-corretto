['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(martyna_tuckerman_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( wg_corr(:), stat=istat )
  call memory_manager('martyna_tuckerman%alloc', 'wg_corr', wg_corr(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(martyna_tuckerman_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(martyna_tuckerman_type), intent(inout) :: this
  integer :: istat

  deallocate( wg_corr, stat=istat )
  call memory_manager('martyna_tuckerman%dealloc', 'wg_corr', wg_corr(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

