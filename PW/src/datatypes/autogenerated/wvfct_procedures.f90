['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(wvfct_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(et)) allocate( et(:,:), stat=istat )
  if (.not. allocated(wg)) allocate( wg(:,:), stat=istat )
  if (.not. allocated(g2kin)) allocate( g2kin(:), stat=istat )
  if (.not. allocated(btype)) allocate( btype(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wvfct_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
