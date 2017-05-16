['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(realus_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( boxrad(:), stat=istat )
  call memory_manager('realus%alloc', 'boxrad', boxrad, istat)

  allocate( box_beta(:,:), stat=istat )
  call memory_manager('realus%alloc', 'box_beta', box_beta, istat)

  allocate( maxbox_beta(:), stat=istat )
  call memory_manager('realus%alloc', 'maxbox_beta', maxbox_beta, istat)

  allocate( betasave(:,:,:), stat=istat )
  call memory_manager('realus%alloc', 'betasave', betasave, istat)

  allocate( boxrad_beta(:), stat=istat )
  call memory_manager('realus%alloc', 'boxrad_beta', boxrad_beta, istat)

  allocate( boxdist_beta(:,:), stat=istat )
  call memory_manager('realus%alloc', 'boxdist_beta', boxdist_beta, istat)

  allocate( xyz_beta(:,:,:), stat=istat )
  call memory_manager('realus%alloc', 'xyz_beta', xyz_beta, istat)

  allocate( spher_beta(:,:,:), stat=istat )
  call memory_manager('realus%alloc', 'spher_beta', spher_beta, istat)

  allocate( xkphase(:,:), stat=istat )
  call memory_manager('realus%alloc', 'xkphase', xkphase, istat)

  allocate( tg_psic(:), stat=istat )
  call memory_manager('realus%alloc', 'tg_psic', tg_psic, istat)

  allocate( psic_temp(:), stat=istat )
  call memory_manager('realus%alloc', 'psic_temp', psic_temp, istat)

  allocate( tg_psic_temp(:), stat=istat )
  call memory_manager('realus%alloc', 'tg_psic_temp', tg_psic_temp, istat)

  allocate( tg_vrs(:), stat=istat )
  call memory_manager('realus%alloc', 'tg_vrs', tg_vrs, istat)

  allocate( psic_box_temp(:), stat=istat )
  call memory_manager('realus%alloc', 'psic_box_temp', psic_box_temp, istat)

  allocate( tg_psic_box_temp(:), stat=istat )
  call memory_manager('realus%alloc', 'tg_psic_box_temp', tg_psic_box_temp, istat)

  allocate( box(:), stat=istat )
  call memory_manager('realus%alloc', 'box', box, istat)

  allocate( dist(:), stat=istat )
  call memory_manager('realus%alloc', 'dist', dist, istat)

  allocate( xyz(:,:), stat=istat )
  call memory_manager('realus%alloc', 'xyz', xyz, istat)

  allocate( qr(:,:), stat=istat )
  call memory_manager('realus%alloc', 'qr', qr, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(realus_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
