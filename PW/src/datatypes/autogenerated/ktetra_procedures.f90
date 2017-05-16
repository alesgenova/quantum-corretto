['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(ktetra_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( tetra(:,:), stat=istat )
  call memory_manager('ktetra%alloc', 'tetra', tetra, istat)

  allocate( wlsm(:,:), stat=istat )
  call memory_manager('ktetra%alloc', 'wlsm', wlsm, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(ktetra_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
