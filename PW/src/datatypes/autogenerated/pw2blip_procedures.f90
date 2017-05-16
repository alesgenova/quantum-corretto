['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(pw2blip_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( psic(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'psic', psic, istat)

  allocate( cavc_flat(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'cavc_flat', cavc_flat, istat)

  allocate( gamma(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'gamma', gamma, istat)

  allocate( map_igk_to_fft(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'map_igk_to_fft', map_igk_to_fft, istat)

  allocate( map_minus_igk_to_fft(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'map_minus_igk_to_fft', map_minus_igk_to_fft, istat)

  allocate( do_fft_z(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'do_fft_z', do_fft_z, istat)

  allocate( do_fft_y(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'do_fft_y', do_fft_y, istat)

  allocate( g_int(:,:), stat=istat )
  call memory_manager('pw2blip%alloc', 'g_int', g_int, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(pw2blip_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
