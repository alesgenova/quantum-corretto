['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wannier_gw_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( wannier_centers(:,:,:), stat=istat )
  call memory_manager('wannier_gw%alloc', 'wannier_centers', wannier_centers(:,:,:), 1, istat)
  allocate( wannier_radii(:,:), stat=istat )
  call memory_manager('wannier_gw%alloc', 'wannier_radii', wannier_radii(:,:), 1, istat)
  allocate( w_centers(:,:,:), stat=istat )
  call memory_manager('wannier_gw%alloc', 'w_centers', w_centers(:,:,:), 1, istat)
  allocate( w_radii(:,:), stat=istat )
  call memory_manager('wannier_gw%alloc', 'w_radii', w_radii(:,:), 1, istat)
  allocate( u_trans(:,:,:), stat=istat )
  call memory_manager('wannier_gw%alloc', 'u_trans', u_trans(:,:,:), 1, istat)
  allocate( becp_gw(:,:,:), stat=istat )
  call memory_manager('wannier_gw%alloc', 'becp_gw', becp_gw(:,:,:), 1, istat)
  allocate( becp_gw_c(:,:,:), stat=istat )
  call memory_manager('wannier_gw%alloc', 'becp_gw_c', becp_gw_c(:,:,:), 1, istat)
  allocate( expgsave(:,:,:,:), stat=istat )
  call memory_manager('wannier_gw%alloc', 'expgsave', expgsave(:,:,:,:), 1, istat)
  allocate( vg_q(:), stat=istat )
  call memory_manager('wannier_gw%alloc', 'vg_q', vg_q(:), 1, istat)
  allocate( ene_gw(:,:), stat=istat )
  call memory_manager('wannier_gw%alloc', 'ene_gw', ene_gw(:,:), 1, istat)
  allocate( i_list(:,:), stat=istat )
  call memory_manager('wannier_gw%alloc', 'i_list', i_list(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wannier_gw_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wannier_gw_type), intent(inout) :: this
  integer :: istat

  deallocate( wannier_centers, stat=istat )
  call memory_manager('wannier_gw%dealloc', 'wannier_centers', wannier_centers(:,:,:), -1, istat)
  deallocate( wannier_radii, stat=istat )
  call memory_manager('wannier_gw%dealloc', 'wannier_radii', wannier_radii(:,:), -1, istat)
  deallocate( w_centers, stat=istat )
  call memory_manager('wannier_gw%dealloc', 'w_centers', w_centers(:,:,:), -1, istat)
  deallocate( w_radii, stat=istat )
  call memory_manager('wannier_gw%dealloc', 'w_radii', w_radii(:,:), -1, istat)
  deallocate( u_trans, stat=istat )
  call memory_manager('wannier_gw%dealloc', 'u_trans', u_trans(:,:,:), -1, istat)
  deallocate( becp_gw, stat=istat )
  call memory_manager('wannier_gw%dealloc', 'becp_gw', becp_gw(:,:,:), -1, istat)
  deallocate( becp_gw_c, stat=istat )
  call memory_manager('wannier_gw%dealloc', 'becp_gw_c', becp_gw_c(:,:,:), -1, istat)
  deallocate( expgsave, stat=istat )
  call memory_manager('wannier_gw%dealloc', 'expgsave', expgsave(:,:,:,:), -1, istat)
  deallocate( vg_q, stat=istat )
  call memory_manager('wannier_gw%dealloc', 'vg_q', vg_q(:), -1, istat)
  deallocate( ene_gw, stat=istat )
  call memory_manager('wannier_gw%dealloc', 'ene_gw', ene_gw(:,:), -1, istat)
  deallocate( i_list, stat=istat )
  call memory_manager('wannier_gw%dealloc', 'i_list', i_list(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

