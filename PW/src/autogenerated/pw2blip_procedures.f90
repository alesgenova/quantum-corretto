['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(pw2blip_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( psic(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'psic', psic(:), 1, istat)
  allocate( cavc_flat(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'cavc_flat', cavc_flat(:), 1, istat)
  allocate( gamma(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'gamma', gamma(:), 1, istat)
  allocate( map_igk_to_fft(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'map_igk_to_fft', map_igk_to_fft(:), 1, istat)
  allocate( map_minus_igk_to_fft(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'map_minus_igk_to_fft', map_minus_igk_to_fft(:), 1, istat)
  allocate( do_fft_z(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'do_fft_z', do_fft_z(:), 1, istat)
  allocate( do_fft_y(:), stat=istat )
  call memory_manager('pw2blip%alloc', 'do_fft_y', do_fft_y(:), 1, istat)
  allocate( g_int(:,:), stat=istat )
  call memory_manager('pw2blip%alloc', 'g_int', g_int(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(pw2blip_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(pw2blip_type), intent(inout) :: this
  integer :: istat

  deallocate( psic, stat=istat )
  call memory_manager('pw2blip%dealloc', 'psic', psic(:), -1, istat)
  deallocate( cavc_flat, stat=istat )
  call memory_manager('pw2blip%dealloc', 'cavc_flat', cavc_flat(:), -1, istat)
  deallocate( gamma, stat=istat )
  call memory_manager('pw2blip%dealloc', 'gamma', gamma(:), -1, istat)
  deallocate( map_igk_to_fft, stat=istat )
  call memory_manager('pw2blip%dealloc', 'map_igk_to_fft', map_igk_to_fft(:), -1, istat)
  deallocate( map_minus_igk_to_fft, stat=istat )
  call memory_manager('pw2blip%dealloc', 'map_minus_igk_to_fft', map_minus_igk_to_fft(:), -1, istat)
  deallocate( do_fft_z, stat=istat )
  call memory_manager('pw2blip%dealloc', 'do_fft_z', do_fft_z(:), -1, istat)
  deallocate( do_fft_y, stat=istat )
  call memory_manager('pw2blip%dealloc', 'do_fft_y', do_fft_y(:), -1, istat)
  deallocate( g_int, stat=istat )
  call memory_manager('pw2blip%dealloc', 'g_int', g_int(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

