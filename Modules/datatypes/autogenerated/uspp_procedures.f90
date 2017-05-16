['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(uspp_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(indv)) allocate( indv(:,:), stat=istat )
  if (.not. allocated(nhtol)) allocate( nhtol(:,:), stat=istat )
  if (.not. allocated(nhtolm)) allocate( nhtolm(:,:), stat=istat )
  if (.not. allocated(ijtoh)) allocate( ijtoh(:,:,:), stat=istat )
  if (.not. allocated(indv_ijkb0)) allocate( indv_ijkb0(:), stat=istat )
  if (.not. allocated(vkb)) allocate( vkb(:,:), stat=istat )
  if (.not. allocated(becsum)) allocate( becsum(:,:,:), stat=istat )
  if (.not. allocated(dvan)) allocate( dvan(:,:,:), stat=istat )
  if (.not. allocated(deeq)) allocate( deeq(:,:,:,:), stat=istat )
  if (.not. allocated(qq)) allocate( qq(:,:,:), stat=istat )
  if (.not. allocated(nhtoj)) allocate( nhtoj(:,:), stat=istat )
  if (.not. allocated(qq_so)) allocate( qq_so(:,:,:,:), stat=istat )
  if (.not. allocated(dvan_so)) allocate( dvan_so(:,:,:,:), stat=istat )
  if (.not. allocated(deeq_nc)) allocate( deeq_nc(:,:,:,:), stat=istat )
  if (.not. allocated(beta)) allocate( beta(:,:,:), stat=istat )
  if (.not. allocated(dbeta)) allocate( dbeta(:,:,:,:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(uspp_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
