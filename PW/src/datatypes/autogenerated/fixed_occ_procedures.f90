['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(fixed_occ_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(f_inp)) allocate( f_inp(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(fixed_occ_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
