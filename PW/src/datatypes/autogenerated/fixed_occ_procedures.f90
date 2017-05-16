['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(fixed_occ_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( f_inp(:,:), stat=istat )
  call memory_manager('fixed_occ%alloc', 'f_inp', f_inp(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(fixed_occ_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(fixed_occ_type), intent(inout) :: this
  integer :: istat

  deallocate( f_inp, stat=istat )
  call memory_manager('fixed_occ%dealloc', 'f_inp', f_inp(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

