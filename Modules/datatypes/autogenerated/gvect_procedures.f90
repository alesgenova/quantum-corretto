['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(gvect_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(nl)) allocate( nl(:), stat=istat )
  if (.not. allocated(nlm)) allocate( nlm(:), stat=istat )
  if (.not. allocated(gg)) allocate( gg(:), stat=istat )
  if (.not. allocated(igtongl)) allocate( igtongl(:), stat=istat )
  if (.not. allocated(g)) allocate( g(:,:), stat=istat )
  if (.not. allocated(mill)) allocate( mill(:,:), stat=istat )
  if (.not. allocated(ig_l2g)) allocate( ig_l2g(:), stat=istat )
  if (.not. allocated(sortedig_l2g)) allocate( sortedig_l2g(:), stat=istat )
  if (.not. allocated(mill_g)) allocate( mill_g(:,:), stat=istat )
  if (.not. allocated(eigts1)) allocate( eigts1(:,:), stat=istat )
  if (.not. allocated(eigts2)) allocate( eigts2(:,:), stat=istat )
  if (.not. allocated(eigts3)) allocate( eigts3(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(gvect_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
