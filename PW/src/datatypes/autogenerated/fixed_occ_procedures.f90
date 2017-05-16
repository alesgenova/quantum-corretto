['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(fixed_occ_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( f_inp(:,:), stat=istat )
  call memory_manager('fixed_occ%alloc', 'f_inp', f_inp, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(fixed_occ_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
