['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(mix_save_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( df(:), stat=istat )
  call memory_manager('mix_save%alloc', 'df', df, istat)

  allocate( dv(:), stat=istat )
  call memory_manager('mix_save%alloc', 'dv', dv, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(mix_save_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
