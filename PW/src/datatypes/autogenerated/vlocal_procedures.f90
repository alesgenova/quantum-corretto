['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(vlocal_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( strf(:,:), stat=istat )
  call memory_manager('vlocal%alloc', 'strf', strf, istat)

  allocate( vloc(:,:), stat=istat )
  call memory_manager('vlocal%alloc', 'vloc', vloc, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(vlocal_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
