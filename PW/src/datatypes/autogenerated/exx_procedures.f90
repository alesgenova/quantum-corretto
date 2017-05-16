['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(exx_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(psi_exx)) allocate( psi_exx(:,:), stat=istat )
  if (.not. allocated(hpsi_exx)) allocate( hpsi_exx(:,:), stat=istat )
  if (.not. allocated(evc_exx)) allocate( evc_exx(:,:), stat=istat )
  if (.not. allocated(psic_exx)) allocate( psic_exx(:), stat=istat )
  if (.not. allocated(xkq_collect)) allocate( xkq_collect(:,:), stat=istat )
  if (.not. allocated(x_occupation)) allocate( x_occupation(:,:), stat=istat )
  if (.not. allocated(exxbuff)) allocate( exxbuff(:,:,:), stat=istat )
  if (.not. allocated(xi)) allocate( xi(:,:,:), stat=istat )
  if (.not. allocated(index_xkq)) allocate( index_xkq(:,:), stat=istat )
  if (.not. allocated(index_xk)) allocate( index_xk(:), stat=istat )
  if (.not. allocated(index_sym)) allocate( index_sym(:), stat=istat )
  if (.not. allocated(rir)) allocate( rir(:,:), stat=istat )
  if (.not. allocated(working_pool)) allocate( working_pool(:), stat=istat )
  if (.not. allocated(indices)) allocate( indices(:), stat=istat )
  if (.not. allocated(msg)) allocate( msg(:,:,:), stat=istat )
  if (.not. allocated(comm_recv)) allocate( comm_recv(:,:), stat=istat )
  if (.not. allocated(comm_send)) allocate( comm_send(:,:), stat=istat )
  if (.not. allocated(comm_recv_reverse)) allocate( comm_recv_reverse(:,:), stat=istat )
  if (.not. allocated(comm_send_reverse)) allocate( comm_send_reverse(:,:,:), stat=istat )
  if (.not. allocated(lda_local)) allocate( lda_local(:,:), stat=istat )
  if (.not. allocated(lda_exx)) allocate( lda_exx(:,:), stat=istat )
  if (.not. allocated(ngk_local)) allocate( ngk_local(:), stat=istat )
  if (.not. allocated(ngk_exx)) allocate( ngk_exx(:), stat=istat )
  if (.not. allocated(igk_exx)) allocate( igk_exx(:,:), stat=istat )
  if (.not. allocated(ig_l2g_loc)) allocate( ig_l2g_loc(:), stat=istat )
  if (.not. allocated(g_loc)) allocate( g_loc(:,:), stat=istat )
  if (.not. allocated(gg_loc)) allocate( gg_loc(:), stat=istat )
  if (.not. allocated(mill_loc)) allocate( mill_loc(:,:), stat=istat )
  if (.not. allocated(nl_loc)) allocate( nl_loc(:), stat=istat )
  if (.not. allocated(nls_loc)) allocate( nls_loc(:), stat=istat )
  if (.not. allocated(nlm_loc)) allocate( nlm_loc(:), stat=istat )
  if (.not. allocated(nlsm_loc)) allocate( nlsm_loc(:), stat=istat )
  if (.not. allocated(ig_l2g_exx)) allocate( ig_l2g_exx(:), stat=istat )
  if (.not. allocated(g_exx)) allocate( g_exx(:,:), stat=istat )
  if (.not. allocated(gg_exx)) allocate( gg_exx(:), stat=istat )
  if (.not. allocated(mill_exx)) allocate( mill_exx(:,:), stat=istat )
  if (.not. allocated(nl_exx)) allocate( nl_exx(:), stat=istat )
  if (.not. allocated(nls_exx)) allocate( nls_exx(:), stat=istat )
  if (.not. allocated(nlm_exx)) allocate( nlm_exx(:), stat=istat )
  if (.not. allocated(nlsm_exx)) allocate( nlsm_exx(:), stat=istat )
  if (.not. allocated(coulomb_fac)) allocate( coulomb_fac(:,:,:), stat=istat )
  if (.not. allocated(coulomb_done)) allocate( coulomb_done(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(exx_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
