['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(exx_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( psi_exx(:,:), stat=istat )
  call memory_manager('exx%alloc', 'psi_exx', psi_exx, istat)

  allocate( hpsi_exx(:,:), stat=istat )
  call memory_manager('exx%alloc', 'hpsi_exx', hpsi_exx, istat)

  allocate( evc_exx(:,:), stat=istat )
  call memory_manager('exx%alloc', 'evc_exx', evc_exx, istat)

  allocate( psic_exx(:), stat=istat )
  call memory_manager('exx%alloc', 'psic_exx', psic_exx, istat)

  allocate( xkq_collect(:,:), stat=istat )
  call memory_manager('exx%alloc', 'xkq_collect', xkq_collect, istat)

  allocate( x_occupation(:,:), stat=istat )
  call memory_manager('exx%alloc', 'x_occupation', x_occupation, istat)

  allocate( exxbuff(:,:,:), stat=istat )
  call memory_manager('exx%alloc', 'exxbuff', exxbuff, istat)

  allocate( xi(:,:,:), stat=istat )
  call memory_manager('exx%alloc', 'xi', xi, istat)

  allocate( index_xkq(:,:), stat=istat )
  call memory_manager('exx%alloc', 'index_xkq', index_xkq, istat)

  allocate( index_xk(:), stat=istat )
  call memory_manager('exx%alloc', 'index_xk', index_xk, istat)

  allocate( index_sym(:), stat=istat )
  call memory_manager('exx%alloc', 'index_sym', index_sym, istat)

  allocate( rir(:,:), stat=istat )
  call memory_manager('exx%alloc', 'rir', rir, istat)

  allocate( working_pool(:), stat=istat )
  call memory_manager('exx%alloc', 'working_pool', working_pool, istat)

  allocate( indices(:), stat=istat )
  call memory_manager('exx%alloc', 'indices', indices, istat)

  allocate( msg(:,:,:), stat=istat )
  call memory_manager('exx%alloc', 'msg', msg, istat)

  allocate( comm_recv(:,:), stat=istat )
  call memory_manager('exx%alloc', 'comm_recv', comm_recv, istat)

  allocate( comm_send(:,:), stat=istat )
  call memory_manager('exx%alloc', 'comm_send', comm_send, istat)

  allocate( comm_recv_reverse(:,:), stat=istat )
  call memory_manager('exx%alloc', 'comm_recv_reverse', comm_recv_reverse, istat)

  allocate( comm_send_reverse(:,:,:), stat=istat )
  call memory_manager('exx%alloc', 'comm_send_reverse', comm_send_reverse, istat)

  allocate( lda_local(:,:), stat=istat )
  call memory_manager('exx%alloc', 'lda_local', lda_local, istat)

  allocate( lda_exx(:,:), stat=istat )
  call memory_manager('exx%alloc', 'lda_exx', lda_exx, istat)

  allocate( ngk_local(:), stat=istat )
  call memory_manager('exx%alloc', 'ngk_local', ngk_local, istat)

  allocate( ngk_exx(:), stat=istat )
  call memory_manager('exx%alloc', 'ngk_exx', ngk_exx, istat)

  allocate( igk_exx(:,:), stat=istat )
  call memory_manager('exx%alloc', 'igk_exx', igk_exx, istat)

  allocate( ig_l2g_loc(:), stat=istat )
  call memory_manager('exx%alloc', 'ig_l2g_loc', ig_l2g_loc, istat)

  allocate( g_loc(:,:), stat=istat )
  call memory_manager('exx%alloc', 'g_loc', g_loc, istat)

  allocate( gg_loc(:), stat=istat )
  call memory_manager('exx%alloc', 'gg_loc', gg_loc, istat)

  allocate( mill_loc(:,:), stat=istat )
  call memory_manager('exx%alloc', 'mill_loc', mill_loc, istat)

  allocate( nl_loc(:), stat=istat )
  call memory_manager('exx%alloc', 'nl_loc', nl_loc, istat)

  allocate( nls_loc(:), stat=istat )
  call memory_manager('exx%alloc', 'nls_loc', nls_loc, istat)

  allocate( nlm_loc(:), stat=istat )
  call memory_manager('exx%alloc', 'nlm_loc', nlm_loc, istat)

  allocate( nlsm_loc(:), stat=istat )
  call memory_manager('exx%alloc', 'nlsm_loc', nlsm_loc, istat)

  allocate( ig_l2g_exx(:), stat=istat )
  call memory_manager('exx%alloc', 'ig_l2g_exx', ig_l2g_exx, istat)

  allocate( g_exx(:,:), stat=istat )
  call memory_manager('exx%alloc', 'g_exx', g_exx, istat)

  allocate( gg_exx(:), stat=istat )
  call memory_manager('exx%alloc', 'gg_exx', gg_exx, istat)

  allocate( mill_exx(:,:), stat=istat )
  call memory_manager('exx%alloc', 'mill_exx', mill_exx, istat)

  allocate( nl_exx(:), stat=istat )
  call memory_manager('exx%alloc', 'nl_exx', nl_exx, istat)

  allocate( nls_exx(:), stat=istat )
  call memory_manager('exx%alloc', 'nls_exx', nls_exx, istat)

  allocate( nlm_exx(:), stat=istat )
  call memory_manager('exx%alloc', 'nlm_exx', nlm_exx, istat)

  allocate( nlsm_exx(:), stat=istat )
  call memory_manager('exx%alloc', 'nlsm_exx', nlsm_exx, istat)

  allocate( coulomb_fac(:,:,:), stat=istat )
  call memory_manager('exx%alloc', 'coulomb_fac', coulomb_fac, istat)

  allocate( coulomb_done(:,:), stat=istat )
  call memory_manager('exx%alloc', 'coulomb_done', coulomb_done, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(exx_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
