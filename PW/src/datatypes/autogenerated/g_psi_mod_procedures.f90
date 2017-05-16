['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(g_psi_mod_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( h_diag(:,:), stat=istat )
  call memory_manager('g_psi_mod%alloc', 'h_diag', h_diag, istat)

  allocate( s_diag(:,:), stat=istat )
  call memory_manager('g_psi_mod%alloc', 's_diag', s_diag, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(g_psi_mod_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
