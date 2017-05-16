['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(realus_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(boxrad)) allocate( boxrad(:), stat=istat )
  if (.not. allocated(box_beta)) allocate( box_beta(:,:), stat=istat )
  if (.not. allocated(maxbox_beta)) allocate( maxbox_beta(:), stat=istat )
  if (.not. allocated(betasave)) allocate( betasave(:,:,:), stat=istat )
  if (.not. allocated(boxrad_beta)) allocate( boxrad_beta(:), stat=istat )
  if (.not. allocated(boxdist_beta)) allocate( boxdist_beta(:,:), stat=istat )
  if (.not. allocated(xyz_beta)) allocate( xyz_beta(:,:,:), stat=istat )
  if (.not. allocated(spher_beta)) allocate( spher_beta(:,:,:), stat=istat )
  if (.not. allocated(xkphase)) allocate( xkphase(:,:), stat=istat )
  if (.not. allocated(tg_psic)) allocate( tg_psic(:), stat=istat )
  if (.not. allocated(psic_temp)) allocate( psic_temp(:), stat=istat )
  if (.not. allocated(tg_psic_temp)) allocate( tg_psic_temp(:), stat=istat )
  if (.not. allocated(tg_vrs)) allocate( tg_vrs(:), stat=istat )
  if (.not. allocated(psic_box_temp)) allocate( psic_box_temp(:), stat=istat )
  if (.not. allocated(tg_psic_box_temp)) allocate( tg_psic_box_temp(:), stat=istat )
  if (.not. allocated(box)) allocate( box(:), stat=istat )
  if (.not. allocated(dist)) allocate( dist(:), stat=istat )
  if (.not. allocated(xyz)) allocate( xyz(:,:), stat=istat )
  if (.not. allocated(qr)) allocate( qr(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(realus_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
