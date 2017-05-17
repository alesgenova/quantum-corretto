['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(esm_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( mill_2d(:,:), stat=istat )
  call memory_manager('esm%alloc', 'mill_2d', mill_2d(:,:), 1, istat)
  allocate( imill_2d(:,:), stat=istat )
  call memory_manager('esm%alloc', 'imill_2d', imill_2d(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(esm_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(esm_type), intent(inout) :: this
  integer :: istat

  deallocate( mill_2d, stat=istat )
  call memory_manager('esm%dealloc', 'mill_2d', mill_2d(:,:), -1, istat)
  deallocate( imill_2d, stat=istat )
  call memory_manager('esm%dealloc', 'imill_2d', imill_2d(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

