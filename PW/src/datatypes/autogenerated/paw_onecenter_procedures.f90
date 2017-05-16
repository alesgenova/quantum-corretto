['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(paw_onecenter_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(msmall_lm)) allocate( msmall_lm(:,:,:), stat=istat )
  if (.not. allocated(g_lm)) allocate( g_lm(:,:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(paw_onecenter_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
