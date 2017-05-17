['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(extpot_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( ext_pot(:), stat=istat )
  call memory_manager('extpot%alloc', 'ext_pot', ext_pot(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(extpot_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(extpot_type), intent(inout) :: this
  integer :: istat

  deallocate( ext_pot, stat=istat )
  call memory_manager('extpot%dealloc', 'ext_pot', ext_pot(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

