['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(us_exx_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(becxx)) allocate( becxx(:), stat=istat )
  if (.not. allocated(becxx0)) allocate( becxx0(:), stat=istat )
  if (.not. allocated(qgm)) allocate( qgm(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(us_exx_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
