['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(ions_base_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(ityp)) allocate( ityp(:), stat=istat )
  if (.not. allocated(tau)) allocate( tau(:,:), stat=istat )
  if (.not. allocated(vel)) allocate( vel(:,:), stat=istat )
  if (.not. allocated(tau_srt)) allocate( tau_srt(:,:), stat=istat )
  if (.not. allocated(vel_srt)) allocate( vel_srt(:,:), stat=istat )
  if (.not. allocated(ind_srt)) allocate( ind_srt(:), stat=istat )
  if (.not. allocated(ind_bck)) allocate( ind_bck(:), stat=istat )
  if (.not. allocated(label_srt)) allocate( label_srt(:), stat=istat )
  if (.not. allocated(if_pos)) allocate( if_pos(:,:), stat=istat )
  if (.not. allocated(iforce)) allocate( iforce(:,:), stat=istat )
  if (.not. allocated(taui)) allocate( taui(:,:), stat=istat )
  if (.not. allocated(extfor)) allocate( extfor(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(ions_base_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
