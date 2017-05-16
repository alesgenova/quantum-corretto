['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(tsvdw_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(UtsvdW)) allocate( UtsvdW(:), stat=istat )
  if (.not. allocated(FtsvdW)) allocate( FtsvdW(:,:), stat=istat )
  if (.not. allocated(HtsvdW)) allocate( HtsvdW(:,:), stat=istat )
  if (.not. allocated(VefftsvdW)) allocate( VefftsvdW(:), stat=istat )
  if (.not. allocated(nstates)) allocate( nstates(:), stat=istat )
  if (.not. allocated(sdispls)) allocate( sdispls(:), stat=istat )
  if (.not. allocated(rdispls)) allocate( rdispls(:), stat=istat )
  if (.not. allocated(sendcount)) allocate( sendcount(:), stat=istat )
  if (.not. allocated(recvcount)) allocate( recvcount(:), stat=istat )
  if (.not. allocated(istatus)) allocate( istatus(:), stat=istat )
  if (.not. allocated(NsomegaA)) allocate( NsomegaA(:), stat=istat )
  if (.not. allocated(NsomegaAr)) allocate( NsomegaAr(:), stat=istat )
  if (.not. allocated(npair)) allocate( npair(:), stat=istat )
  if (.not. allocated(pair)) allocate( pair(:,:), stat=istat )
  if (.not. allocated(gomegar)) allocate( gomegar(:,:), stat=istat )
  if (.not. allocated(somegaA)) allocate( somegaA(:,:,:), stat=istat )
  if (.not. allocated(somegaAr)) allocate( somegaAr(:,:,:), stat=istat )
  if (.not. allocated(gomegaAr)) allocate( gomegaAr(:,:,:), stat=istat )
  if (.not. allocated(predveffAdn)) allocate( predveffAdn(:), stat=istat )
  if (.not. allocated(vfree)) allocate( vfree(:), stat=istat )
  if (.not. allocated(dpfree)) allocate( dpfree(:), stat=istat )
  if (.not. allocated(R0free)) allocate( R0free(:), stat=istat )
  if (.not. allocated(C6AAfree)) allocate( C6AAfree(:), stat=istat )
  if (.not. allocated(veff)) allocate( veff(:), stat=istat )
  if (.not. allocated(dpeff)) allocate( dpeff(:), stat=istat )
  if (.not. allocated(R0eff)) allocate( R0eff(:), stat=istat )
  if (.not. allocated(C6AAeff)) allocate( C6AAeff(:), stat=istat )
  if (.not. allocated(rhosad)) allocate( rhosad(:), stat=istat )
  if (.not. allocated(rhotot)) allocate( rhotot(:), stat=istat )
  if (.not. allocated(dveffAdn)) allocate( dveffAdn(:,:), stat=istat )
  if (.not. allocated(spgrd)) allocate( spgrd(:,:), stat=istat )
  if (.not. allocated(sprho)) allocate( sprho(:,:), stat=istat )
  if (.not. allocated(spdrho)) allocate( spdrho(:,:), stat=istat )
  if (.not. allocated(spdata)) allocate( spdata(:,:), stat=istat )
  if (.not. allocated(LIA)) allocate( LIA(:,:), stat=istat )
  if (.not. allocated(LIB)) allocate( LIB(:,:), stat=istat )
  if (.not. allocated(dLIA)) allocate( dLIA(:,:), stat=istat )
  if (.not. allocated(dLIB)) allocate( dLIB(:,:), stat=istat )
  if (.not. allocated(atxyz)) allocate( atxyz(:,:), stat=istat )
  if (.not. allocated(C6ABfree)) allocate( C6ABfree(:,:), stat=istat )
  if (.not. allocated(C6ABeff)) allocate( C6ABeff(:,:), stat=istat )
  if (.not. allocated(dveffdR)) allocate( dveffdR(:,:,:), stat=istat )
  if (.not. allocated(dveffdh)) allocate( dveffdh(:,:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(tsvdw_module_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
