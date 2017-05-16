['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(realus_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( boxrad(:), stat=istat )
  call memory_manager('realus%alloc', 'boxrad', boxrad(:), 1, istat)
  allocate( box_beta(:,:), stat=istat )
  call memory_manager('realus%alloc', 'box_beta', box_beta(:,:), 1, istat)
  allocate( maxbox_beta(:), stat=istat )
  call memory_manager('realus%alloc', 'maxbox_beta', maxbox_beta(:), 1, istat)
  allocate( betasave(:,:,:), stat=istat )
  call memory_manager('realus%alloc', 'betasave', betasave(:,:,:), 1, istat)
  allocate( boxrad_beta(:), stat=istat )
  call memory_manager('realus%alloc', 'boxrad_beta', boxrad_beta(:), 1, istat)
  allocate( boxdist_beta(:,:), stat=istat )
  call memory_manager('realus%alloc', 'boxdist_beta', boxdist_beta(:,:), 1, istat)
  allocate( xyz_beta(:,:,:), stat=istat )
  call memory_manager('realus%alloc', 'xyz_beta', xyz_beta(:,:,:), 1, istat)
  allocate( spher_beta(:,:,:), stat=istat )
  call memory_manager('realus%alloc', 'spher_beta', spher_beta(:,:,:), 1, istat)
  allocate( xkphase(:,:), stat=istat )
  call memory_manager('realus%alloc', 'xkphase', xkphase(:,:), 1, istat)
  allocate( tg_psic(:), stat=istat )
  call memory_manager('realus%alloc', 'tg_psic', tg_psic(:), 1, istat)
  allocate( psic_temp(:), stat=istat )
  call memory_manager('realus%alloc', 'psic_temp', psic_temp(:), 1, istat)
  allocate( tg_psic_temp(:), stat=istat )
  call memory_manager('realus%alloc', 'tg_psic_temp', tg_psic_temp(:), 1, istat)
  allocate( tg_vrs(:), stat=istat )
  call memory_manager('realus%alloc', 'tg_vrs', tg_vrs(:), 1, istat)
  allocate( psic_box_temp(:), stat=istat )
  call memory_manager('realus%alloc', 'psic_box_temp', psic_box_temp(:), 1, istat)
  allocate( tg_psic_box_temp(:), stat=istat )
  call memory_manager('realus%alloc', 'tg_psic_box_temp', tg_psic_box_temp(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(realus_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(realus_type), intent(inout) :: this
  integer :: istat

  deallocate( boxrad, stat=istat )
  call memory_manager('realus%dealloc', 'boxrad', boxrad(:), -1, istat)
  deallocate( box_beta, stat=istat )
  call memory_manager('realus%dealloc', 'box_beta', box_beta(:,:), -1, istat)
  deallocate( maxbox_beta, stat=istat )
  call memory_manager('realus%dealloc', 'maxbox_beta', maxbox_beta(:), -1, istat)
  deallocate( betasave, stat=istat )
  call memory_manager('realus%dealloc', 'betasave', betasave(:,:,:), -1, istat)
  deallocate( boxrad_beta, stat=istat )
  call memory_manager('realus%dealloc', 'boxrad_beta', boxrad_beta(:), -1, istat)
  deallocate( boxdist_beta, stat=istat )
  call memory_manager('realus%dealloc', 'boxdist_beta', boxdist_beta(:,:), -1, istat)
  deallocate( xyz_beta, stat=istat )
  call memory_manager('realus%dealloc', 'xyz_beta', xyz_beta(:,:,:), -1, istat)
  deallocate( spher_beta, stat=istat )
  call memory_manager('realus%dealloc', 'spher_beta', spher_beta(:,:,:), -1, istat)
  deallocate( xkphase, stat=istat )
  call memory_manager('realus%dealloc', 'xkphase', xkphase(:,:), -1, istat)
  deallocate( tg_psic, stat=istat )
  call memory_manager('realus%dealloc', 'tg_psic', tg_psic(:), -1, istat)
  deallocate( psic_temp, stat=istat )
  call memory_manager('realus%dealloc', 'psic_temp', psic_temp(:), -1, istat)
  deallocate( tg_psic_temp, stat=istat )
  call memory_manager('realus%dealloc', 'tg_psic_temp', tg_psic_temp(:), -1, istat)
  deallocate( tg_vrs, stat=istat )
  call memory_manager('realus%dealloc', 'tg_vrs', tg_vrs(:), -1, istat)
  deallocate( psic_box_temp, stat=istat )
  call memory_manager('realus%dealloc', 'psic_box_temp', psic_box_temp(:), -1, istat)
  deallocate( tg_psic_box_temp, stat=istat )
  call memory_manager('realus%dealloc', 'tg_psic_box_temp', tg_psic_box_temp(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

