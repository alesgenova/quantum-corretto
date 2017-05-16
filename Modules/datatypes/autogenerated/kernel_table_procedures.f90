['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(kernel_table_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(q_mesh)) allocate( q_mesh(:), stat=istat )
  if (.not. allocated(kernel)) allocate( kernel(:,:,:), stat=istat )
  if (.not. allocated(d2phi_dk2)) allocate( d2phi_dk2(:,:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(kernel_table_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
