['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(klist_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( igk_k(:,:), stat=istat )
  call memory_manager('klist%alloc', 'igk_k', igk_k(:,:), 1, istat)
  allocate( ngk(:), stat=istat )
  call memory_manager('klist%alloc', 'ngk', ngk(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(klist_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(klist_type), intent(inout) :: this
  integer :: istat

  deallocate( igk_k, stat=istat )
  call memory_manager('klist%dealloc', 'igk_k', igk_k(:,:), -1, istat)
  deallocate( ngk, stat=istat )
  call memory_manager('klist%dealloc', 'ngk', ngk(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

