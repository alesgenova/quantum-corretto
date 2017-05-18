['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(constraints_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( constr_type(:), stat=istat )
  call memory_manager('constraints_module%alloc', 'constr_type', constr_type(:), 1, istat)
  allocate( constr(:,:), stat=istat )
  call memory_manager('constraints_module%alloc', 'constr', constr(:,:), 1, istat)
  allocate( constr_target(:), stat=istat )
  call memory_manager('constraints_module%alloc', 'constr_target', constr_target(:), 1, istat)
  allocate( lagrange(:), stat=istat )
  call memory_manager('constraints_module%alloc', 'lagrange', lagrange(:), 1, istat)
  allocate( gp(:), stat=istat )
  call memory_manager('constraints_module%alloc', 'gp', gp(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(constraints_module_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(constraints_module_type), intent(inout) :: this
  integer :: istat

  deallocate( constr_type, stat=istat )
  call memory_manager('constraints_module%dealloc', 'constr_type', constr_type(:), -1, istat)
  deallocate( constr, stat=istat )
  call memory_manager('constraints_module%dealloc', 'constr', constr(:,:), -1, istat)
  deallocate( constr_target, stat=istat )
  call memory_manager('constraints_module%dealloc', 'constr_target', constr_target(:), -1, istat)
  deallocate( lagrange, stat=istat )
  call memory_manager('constraints_module%dealloc', 'lagrange', lagrange(:), -1, istat)
  deallocate( gp, stat=istat )
  call memory_manager('constraints_module%dealloc', 'gp', gp(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

