['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wannier_new_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( wan_pot(:,:), stat=istat )
  call memory_manager('wannier_new%alloc', 'wan_pot', wan_pot(:,:), 1, istat)
  allocate( wannier_energy(:,:), stat=istat )
  call memory_manager('wannier_new%alloc', 'wannier_energy', wannier_energy(:,:), 1, istat)
  allocate( wannier_occ(:,:,:), stat=istat )
  call memory_manager('wannier_new%alloc', 'wannier_occ', wannier_occ(:,:,:), 1, istat)
  allocate( pp(:,:), stat=istat )
  call memory_manager('wannier_new%alloc', 'pp', pp(:,:), 1, istat)
  allocate( coef(:,:,:), stat=istat )
  call memory_manager('wannier_new%alloc', 'coef', coef(:,:,:), 1, istat)
  allocate( wan_in(:,:), stat=istat )
  call memory_manager('wannier_new%alloc', 'wan_in', wan_in(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wannier_new_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wannier_new_type), intent(inout) :: this
  integer :: istat

  deallocate( wan_pot, stat=istat )
  call memory_manager('wannier_new%dealloc', 'wan_pot', wan_pot(:,:), -1, istat)
  deallocate( wannier_energy, stat=istat )
  call memory_manager('wannier_new%dealloc', 'wannier_energy', wannier_energy(:,:), -1, istat)
  deallocate( wannier_occ, stat=istat )
  call memory_manager('wannier_new%dealloc', 'wannier_occ', wannier_occ(:,:,:), -1, istat)
  deallocate( pp, stat=istat )
  call memory_manager('wannier_new%dealloc', 'pp', pp(:,:), -1, istat)
  deallocate( coef, stat=istat )
  call memory_manager('wannier_new%dealloc', 'coef', coef(:,:,:), -1, istat)
  deallocate( wan_in, stat=istat )
  call memory_manager('wannier_new%dealloc', 'wan_in', wan_in(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

