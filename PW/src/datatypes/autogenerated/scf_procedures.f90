['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(scf_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( of_r(:,:), stat=istat )
  call memory_manager('scf%alloc', 'of_r', of_r, istat)

  allocate( of_g(:,:), stat=istat )
  call memory_manager('scf%alloc', 'of_g', of_g, istat)

  allocate( kin_r(:,:), stat=istat )
  call memory_manager('scf%alloc', 'kin_r', kin_r, istat)

  allocate( kin_g(:,:), stat=istat )
  call memory_manager('scf%alloc', 'kin_g', kin_g, istat)

  allocate( ns(:,:,:,:), stat=istat )
  call memory_manager('scf%alloc', 'ns', ns, istat)

  allocate( ns_nc(:,:,:,:), stat=istat )
  call memory_manager('scf%alloc', 'ns_nc', ns_nc, istat)

  allocate( bec(:,:,:), stat=istat )
  call memory_manager('scf%alloc', 'bec', bec, istat)

  allocate( vltot(:), stat=istat )
  call memory_manager('scf%alloc', 'vltot', vltot, istat)

  allocate( vrs(:,:), stat=istat )
  call memory_manager('scf%alloc', 'vrs', vrs, istat)

  allocate( rho_core(:), stat=istat )
  call memory_manager('scf%alloc', 'rho_core', rho_core, istat)

  allocate( kedtau(:,:), stat=istat )
  call memory_manager('scf%alloc', 'kedtau', kedtau, istat)

  allocate( rhog_core(:), stat=istat )
  call memory_manager('scf%alloc', 'rhog_core', rhog_core, istat)

  allocate( io_buffer(:), stat=istat )
  call memory_manager('scf%alloc', 'io_buffer', io_buffer, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(scf_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
