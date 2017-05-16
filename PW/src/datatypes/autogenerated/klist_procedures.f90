['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(klist_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( igk_k(:,:), stat=istat )
  call memory_manager('klist%alloc', 'igk_k', igk_k, istat)

  allocate( ngk(:), stat=istat )
  call memory_manager('klist%alloc', 'ngk', ngk, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(klist_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
