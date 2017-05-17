['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(atom_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( rgrid(:), stat=istat )
  call memory_manager('atom%alloc', 'rgrid', rgrid(:), 1, istat)
  allocate( msh(:), stat=istat )
  call memory_manager('atom%alloc', 'msh', msh(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(atom_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(atom_type), intent(inout) :: this
  integer :: istat

  deallocate( rgrid, stat=istat )
  call memory_manager('atom%dealloc', 'rgrid', rgrid(:), -1, istat)
  deallocate( msh, stat=istat )
  call memory_manager('atom%dealloc', 'msh', msh(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

