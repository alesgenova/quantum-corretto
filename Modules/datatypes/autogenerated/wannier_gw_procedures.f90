['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(wannier_gw_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(wannier_centers)) allocate( wannier_centers(:,:,:), stat=istat )
  if (.not. allocated(wannier_radii)) allocate( wannier_radii(:,:), stat=istat )
  if (.not. allocated(w_centers)) allocate( w_centers(:,:,:), stat=istat )
  if (.not. allocated(w_radii)) allocate( w_radii(:,:), stat=istat )
  if (.not. allocated(u_trans)) allocate( u_trans(:,:,:), stat=istat )
  if (.not. allocated(becp_gw)) allocate( becp_gw(:,:,:), stat=istat )
  if (.not. allocated(becp_gw_c)) allocate( becp_gw_c(:,:,:), stat=istat )
  if (.not. allocated(expgsave)) allocate( expgsave(:,:,:,:), stat=istat )
  if (.not. allocated(vg_q)) allocate( vg_q(:), stat=istat )
  if (.not. allocated(ene_gw)) allocate( ene_gw(:,:), stat=istat )
  if (.not. allocated(i_list)) allocate( i_list(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wannier_gw_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
