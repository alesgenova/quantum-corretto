['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(g_psi_mod_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(h_diag)) allocate( h_diag(:,:), stat=istat )
  if (.not. allocated(s_diag)) allocate( s_diag(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(g_psi_mod_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
