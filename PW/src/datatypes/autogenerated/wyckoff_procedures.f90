['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wyckoff_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( tautot(:,:), stat=istat )
  call memory_manager('wyckoff%alloc', 'tautot', tautot(:,:), 1, istat)
  allocate( extfortot(:,:), stat=istat )
  call memory_manager('wyckoff%alloc', 'extfortot', extfortot(:,:), 1, istat)
  allocate( ityptot(:), stat=istat )
  call memory_manager('wyckoff%alloc', 'ityptot', ityptot(:), 1, istat)
  allocate( if_postot(:,:), stat=istat )
  call memory_manager('wyckoff%alloc', 'if_postot', if_postot(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wyckoff_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wyckoff_type), intent(inout) :: this
  integer :: istat

  deallocate( tautot, stat=istat )
  call memory_manager('wyckoff%dealloc', 'tautot', tautot(:,:), -1, istat)
  deallocate( extfortot, stat=istat )
  call memory_manager('wyckoff%dealloc', 'extfortot', extfortot(:,:), -1, istat)
  deallocate( ityptot, stat=istat )
  call memory_manager('wyckoff%dealloc', 'ityptot', ityptot(:), -1, istat)
  deallocate( if_postot, stat=istat )
  call memory_manager('wyckoff%dealloc', 'if_postot', if_postot(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

