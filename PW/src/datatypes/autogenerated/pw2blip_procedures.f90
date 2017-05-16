['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(pw2blip_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(psic)) allocate( psic(:), stat=istat )
  if (.not. allocated(cavc_flat)) allocate( cavc_flat(:), stat=istat )
  if (.not. allocated(gamma)) allocate( gamma(:), stat=istat )
  if (.not. allocated(map_igk_to_fft)) allocate( map_igk_to_fft(:), stat=istat )
  if (.not. allocated(map_minus_igk_to_fft)) allocate( map_minus_igk_to_fft(:), stat=istat )
  if (.not. allocated(do_fft_z)) allocate( do_fft_z(:), stat=istat )
  if (.not. allocated(do_fft_y)) allocate( do_fft_y(:), stat=istat )
  if (.not. allocated(g_int)) allocate( g_int(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(pw2blip_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
