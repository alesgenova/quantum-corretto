['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(us_exx_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( becxx(:), stat=istat )
  call memory_manager('us_exx%alloc', 'becxx', becxx, istat)

  allocate( becxx0(:), stat=istat )
  call memory_manager('us_exx%alloc', 'becxx0', becxx0, istat)

  allocate( qgm(:,:), stat=istat )
  call memory_manager('us_exx%alloc', 'qgm', qgm, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(us_exx_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
