['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(extfield_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( forcefield(:,:), stat=istat )
  call memory_manager('extfield%alloc', 'forcefield', forcefield, istat)

  allocate( forcemono(:,:), stat=istat )
  call memory_manager('extfield%alloc', 'forcemono', forcemono, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(extfield_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
