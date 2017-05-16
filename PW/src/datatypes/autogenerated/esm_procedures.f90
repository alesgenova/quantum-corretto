['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(esm_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(mill_2d)) allocate( mill_2d(:,:), stat=istat )
  if (.not. allocated(imill_2d)) allocate( imill_2d(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(esm_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
