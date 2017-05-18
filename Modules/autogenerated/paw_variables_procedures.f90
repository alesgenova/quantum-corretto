['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(paw_variables_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( rad(:), stat=istat )
  call memory_manager('paw_variables%alloc', 'rad', rad(:), 1, istat)
  allocate( ddd_paw(:,:,:), stat=istat )
  call memory_manager('paw_variables%alloc', 'ddd_paw', ddd_paw(:,:,:), 1, istat)
  allocate( vs_rad(:,:,:), stat=istat )
  call memory_manager('paw_variables%alloc', 'vs_rad', vs_rad(:,:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(paw_variables_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(paw_variables_type), intent(inout) :: this
  integer :: istat

  deallocate( rad, stat=istat )
  call memory_manager('paw_variables%dealloc', 'rad', rad(:), -1, istat)
  deallocate( ddd_paw, stat=istat )
  call memory_manager('paw_variables%dealloc', 'ddd_paw', ddd_paw(:,:,:), -1, istat)
  deallocate( vs_rad, stat=istat )
  call memory_manager('paw_variables%dealloc', 'vs_rad', vs_rad(:,:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

