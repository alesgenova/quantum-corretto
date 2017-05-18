['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(mp_exx_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( egrp_pairs(:,:,:), stat=istat )
  call memory_manager('mp_exx%alloc', 'egrp_pairs', egrp_pairs(:,:,:), 1, istat)
  allocate( band_roots(:), stat=istat )
  call memory_manager('mp_exx%alloc', 'band_roots', band_roots(:), 1, istat)
  allocate( contributed_bands(:,:), stat=istat )
  call memory_manager('mp_exx%alloc', 'contributed_bands', contributed_bands(:,:), 1, istat)
  allocate( nibands(:), stat=istat )
  call memory_manager('mp_exx%alloc', 'nibands', nibands(:), 1, istat)
  allocate( ibands(:,:), stat=istat )
  call memory_manager('mp_exx%alloc', 'ibands', ibands(:,:), 1, istat)
  allocate( iexx_istart(:), stat=istat )
  call memory_manager('mp_exx%alloc', 'iexx_istart', iexx_istart(:), 1, istat)
  allocate( iexx_iend(:), stat=istat )
  call memory_manager('mp_exx%alloc', 'iexx_iend', iexx_iend(:), 1, istat)
  allocate( all_start(:), stat=istat )
  call memory_manager('mp_exx%alloc', 'all_start', all_start(:), 1, istat)
  allocate( all_end(:), stat=istat )
  call memory_manager('mp_exx%alloc', 'all_end', all_end(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(mp_exx_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(mp_exx_type), intent(inout) :: this
  integer :: istat

  deallocate( egrp_pairs, stat=istat )
  call memory_manager('mp_exx%dealloc', 'egrp_pairs', egrp_pairs(:,:,:), -1, istat)
  deallocate( band_roots, stat=istat )
  call memory_manager('mp_exx%dealloc', 'band_roots', band_roots(:), -1, istat)
  deallocate( contributed_bands, stat=istat )
  call memory_manager('mp_exx%dealloc', 'contributed_bands', contributed_bands(:,:), -1, istat)
  deallocate( nibands, stat=istat )
  call memory_manager('mp_exx%dealloc', 'nibands', nibands(:), -1, istat)
  deallocate( ibands, stat=istat )
  call memory_manager('mp_exx%dealloc', 'ibands', ibands(:,:), -1, istat)
  deallocate( iexx_istart, stat=istat )
  call memory_manager('mp_exx%dealloc', 'iexx_istart', iexx_istart(:), -1, istat)
  deallocate( iexx_iend, stat=istat )
  call memory_manager('mp_exx%dealloc', 'iexx_iend', iexx_iend(:), -1, istat)
  deallocate( all_start, stat=istat )
  call memory_manager('mp_exx%dealloc', 'all_start', all_start(:), -1, istat)
  deallocate( all_end, stat=istat )
  call memory_manager('mp_exx%dealloc', 'all_end', all_end(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

