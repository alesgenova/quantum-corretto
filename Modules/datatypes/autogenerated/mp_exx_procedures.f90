['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(mp_exx_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(egrp_pairs)) allocate( egrp_pairs(:,:,:), stat=istat )
  if (.not. allocated(band_roots)) allocate( band_roots(:), stat=istat )
  if (.not. allocated(contributed_bands)) allocate( contributed_bands(:,:), stat=istat )
  if (.not. allocated(nibands)) allocate( nibands(:), stat=istat )
  if (.not. allocated(ibands)) allocate( ibands(:,:), stat=istat )
  if (.not. allocated(iexx_istart)) allocate( iexx_istart(:), stat=istat )
  if (.not. allocated(iexx_iend)) allocate( iexx_iend(:), stat=istat )
  if (.not. allocated(all_start)) allocate( all_start(:), stat=istat )
  if (.not. allocated(all_end)) allocate( all_end(:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(mp_exx_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
