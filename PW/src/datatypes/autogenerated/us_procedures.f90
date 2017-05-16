['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(us_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(qrad)) allocate( qrad(:,:,:,:), stat=istat )
  if (.not. allocated(tab)) allocate( tab(:,:,:), stat=istat )
  if (.not. allocated(tab_at)) allocate( tab_at(:,:,:), stat=istat )
  if (.not. allocated(tab_d2y)) allocate( tab_d2y(:,:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(us_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
