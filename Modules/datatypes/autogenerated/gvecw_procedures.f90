['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(gvecw_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(g2kin)) allocate( g2kin(:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(gvecw_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
