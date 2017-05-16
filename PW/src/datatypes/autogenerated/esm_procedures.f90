['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(esm_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( mill_2d(:,:), stat=istat )
  call memory_manager('esm%alloc', 'mill_2d', mill_2d, istat)

  allocate( imill_2d(:,:), stat=istat )
  call memory_manager('esm%alloc', 'imill_2d', imill_2d, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(esm_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
