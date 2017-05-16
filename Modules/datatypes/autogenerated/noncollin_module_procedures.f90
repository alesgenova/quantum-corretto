['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(noncollin_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(pointlist)) allocate( pointlist(:), stat=istat )
  if (.not. allocated(factlist)) allocate( factlist(:), stat=istat )
  if (.not. allocated(r_loc)) allocate( r_loc(:), stat=istat )
  if (.not. allocated(m_loc)) allocate( m_loc(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(noncollin_module_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
