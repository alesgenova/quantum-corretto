['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(bp_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( evcel(:,:), stat=istat )
  call memory_manager('bp%alloc', 'evcel', evcel, istat)

  allocate( evcelm(:,:,:), stat=istat )
  call memory_manager('bp%alloc', 'evcelm', evcelm, istat)

  allocate( evcelp(:,:,:), stat=istat )
  call memory_manager('bp%alloc', 'evcelp', evcelp, istat)

  allocate( fact_hepsi(:,:), stat=istat )
  call memory_manager('bp%alloc', 'fact_hepsi', fact_hepsi, istat)

  allocate( mapgp_global(:,:), stat=istat )
  call memory_manager('bp%alloc', 'mapgp_global', mapgp_global, istat)

  allocate( mapgm_global(:,:), stat=istat )
  call memory_manager('bp%alloc', 'mapgm_global', mapgm_global, istat)

  allocate( nx_el(:,:), stat=istat )
  call memory_manager('bp%alloc', 'nx_el', nx_el, istat)

  allocate( mapg_owner(:,:), stat=istat )
  call memory_manager('bp%alloc', 'mapg_owner', mapg_owner, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(bp_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
