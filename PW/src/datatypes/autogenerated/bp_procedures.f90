['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(bp_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( evcel(:,:), stat=istat )
  call memory_manager('bp%alloc', 'evcel', evcel(:,:), 1, istat)
  allocate( evcelm(:,:,:), stat=istat )
  call memory_manager('bp%alloc', 'evcelm', evcelm(:,:,:), 1, istat)
  allocate( evcelp(:,:,:), stat=istat )
  call memory_manager('bp%alloc', 'evcelp', evcelp(:,:,:), 1, istat)
  allocate( fact_hepsi(:,:), stat=istat )
  call memory_manager('bp%alloc', 'fact_hepsi', fact_hepsi(:,:), 1, istat)
  allocate( mapgp_global(:,:), stat=istat )
  call memory_manager('bp%alloc', 'mapgp_global', mapgp_global(:,:), 1, istat)
  allocate( mapgm_global(:,:), stat=istat )
  call memory_manager('bp%alloc', 'mapgm_global', mapgm_global(:,:), 1, istat)
  allocate( nx_el(:,:), stat=istat )
  call memory_manager('bp%alloc', 'nx_el', nx_el(:,:), 1, istat)
  allocate( mapg_owner(:,:), stat=istat )
  call memory_manager('bp%alloc', 'mapg_owner', mapg_owner(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(bp_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(bp_type), intent(inout) :: this
  integer :: istat

  deallocate( evcel, stat=istat )
  call memory_manager('bp%dealloc', 'evcel', evcel(:,:), -1, istat)
  deallocate( evcelm, stat=istat )
  call memory_manager('bp%dealloc', 'evcelm', evcelm(:,:,:), -1, istat)
  deallocate( evcelp, stat=istat )
  call memory_manager('bp%dealloc', 'evcelp', evcelp(:,:,:), -1, istat)
  deallocate( fact_hepsi, stat=istat )
  call memory_manager('bp%dealloc', 'fact_hepsi', fact_hepsi(:,:), -1, istat)
  deallocate( mapgp_global, stat=istat )
  call memory_manager('bp%dealloc', 'mapgp_global', mapgp_global(:,:), -1, istat)
  deallocate( mapgm_global, stat=istat )
  call memory_manager('bp%dealloc', 'mapgm_global', mapgm_global(:,:), -1, istat)
  deallocate( nx_el, stat=istat )
  call memory_manager('bp%dealloc', 'nx_el', nx_el(:,:), -1, istat)
  deallocate( mapg_owner, stat=istat )
  call memory_manager('bp%dealloc', 'mapg_owner', mapg_owner(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

