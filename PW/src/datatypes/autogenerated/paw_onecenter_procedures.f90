['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(paw_onecenter_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( msmall_lm(:,:,:), stat=istat )
  call memory_manager('paw_onecenter%alloc', 'msmall_lm', msmall_lm, istat)

  allocate( g_lm(:,:,:), stat=istat )
  call memory_manager('paw_onecenter%alloc', 'g_lm', g_lm, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(paw_onecenter_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
