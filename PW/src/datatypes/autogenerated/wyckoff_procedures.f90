['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(wyckoff_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(tautot)) allocate( tautot(:,:), stat=istat )
  if (.not. allocated(extfortot)) allocate( extfortot(:,:), stat=istat )
  if (.not. allocated(ityptot)) allocate( ityptot(:), stat=istat )
  if (.not. allocated(if_postot)) allocate( if_postot(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wyckoff_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
