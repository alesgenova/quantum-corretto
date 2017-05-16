['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wyckoff_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( tautot(:,:), stat=istat )
  call memory_manager('wyckoff%alloc', 'tautot', tautot, istat)

  allocate( extfortot(:,:), stat=istat )
  call memory_manager('wyckoff%alloc', 'extfortot', extfortot, istat)

  allocate( ityptot(:), stat=istat )
  call memory_manager('wyckoff%alloc', 'ityptot', ityptot, istat)

  allocate( if_postot(:,:), stat=istat )
  call memory_manager('wyckoff%alloc', 'if_postot', if_postot, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wyckoff_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
