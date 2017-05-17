['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(spin_orb_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( fcoef(:,:,:,:,:), stat=istat )
  call memory_manager('spin_orb%alloc', 'fcoef', fcoef(:,:,:,:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(spin_orb_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(spin_orb_type), intent(inout) :: this
  integer :: istat

  deallocate( fcoef, stat=istat )
  call memory_manager('spin_orb%dealloc', 'fcoef', fcoef(:,:,:,:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

