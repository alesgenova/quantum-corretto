['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(xdm_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(xenv)) allocate( xenv(:,:), stat=istat )
  if (.not. allocated(ienv)) allocate( ienv(:), stat=istat )
  if (.not. allocated(lvec)) allocate( lvec(:,:), stat=istat )
  if (.not. allocated(alpha)) allocate( alpha(:), stat=istat )
  if (.not. allocated(ml)) allocate( ml(:,:), stat=istat )
  if (.not. allocated(cx)) allocate( cx(:,:,:), stat=istat )
  if (.not. allocated(rvdw)) allocate( rvdw(:,:), stat=istat )
  if (.not. allocated(fsave)) allocate( fsave(:,:), stat=istat )
  if (.not. allocated(ssave)) allocate( ssave(:,:), stat=istat )
  if (.not. allocated(rfree)) allocate( rfree(:,:), stat=istat )
  if (.not. allocated(w2free)) allocate( w2free(:,:), stat=istat )
  if (.not. allocated(rmaxg2)) allocate( rmaxg2(:), stat=istat )
  if (.not. allocated(rcore)) allocate( rcore(:,:), stat=istat )
  if (.not. allocated(w2core)) allocate( w2core(:,:), stat=istat )
  if (.not. allocated(rmaxcore2)) allocate( rmaxcore2(:), stat=istat )
  if (.not. allocated(afree)) allocate( afree(:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(xdm_module_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
