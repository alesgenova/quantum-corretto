['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(bz_form_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(normal)) allocate( normal(:,:), stat=istat )
  if (.not. allocated(vertex_coord)) allocate( vertex_coord(:,:), stat=istat )
  if (.not. allocated(ivertex)) allocate( ivertex(:,:), stat=istat )
  if (.not. allocated(indsur)) allocate( indsur(:,:), stat=istat )
  if (.not. allocated(letter_list)) allocate( letter_list(:), stat=istat )
  if (.not. allocated(letter_coord)) allocate( letter_coord(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(bz_form_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
