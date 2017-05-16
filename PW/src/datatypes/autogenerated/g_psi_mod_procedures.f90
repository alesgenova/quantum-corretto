['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(g_psi_mod_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( h_diag(:,:), stat=istat )
  call memory_manager('g_psi_mod%alloc', 'h_diag', h_diag(:,:), 1, istat)
  allocate( s_diag(:,:), stat=istat )
  call memory_manager('g_psi_mod%alloc', 's_diag', s_diag(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(g_psi_mod_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(g_psi_mod_type), intent(inout) :: this
  integer :: istat

  deallocate( h_diag, stat=istat )
  call memory_manager('g_psi_mod%dealloc', 'h_diag', h_diag(:,:), -1, istat)
  deallocate( s_diag, stat=istat )
  call memory_manager('g_psi_mod%dealloc', 's_diag', s_diag(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

