['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(london_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( C6_i(:), stat=istat )
  call memory_manager('london_module%alloc', 'C6_i', C6_i(:), 1, istat)
  allocate( R_vdw(:), stat=istat )
  call memory_manager('london_module%alloc', 'R_vdw', R_vdw(:), 1, istat)
  allocate( C6_ij(: , :), stat=istat )
  call memory_manager('london_module%alloc', 'C6_ij', C6_ij(: , :), 1, istat)
  allocate( R_sum(: , :), stat=istat )
  call memory_manager('london_module%alloc', 'R_sum', R_sum(: , :), 1, istat)
  allocate( r(: , :), stat=istat )
  call memory_manager('london_module%alloc', 'r', r(: , :), 1, istat)
  allocate( dist2(:), stat=istat )
  call memory_manager('london_module%alloc', 'dist2', dist2(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(london_module_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(london_module_type), intent(inout) :: this
  integer :: istat

  deallocate( C6_i, stat=istat )
  call memory_manager('london_module%dealloc', 'C6_i', C6_i(:), -1, istat)
  deallocate( R_vdw, stat=istat )
  call memory_manager('london_module%dealloc', 'R_vdw', R_vdw(:), -1, istat)
  deallocate( C6_ij, stat=istat )
  call memory_manager('london_module%dealloc', 'C6_ij', C6_ij(: , :), -1, istat)
  deallocate( R_sum, stat=istat )
  call memory_manager('london_module%dealloc', 'R_sum', R_sum(: , :), -1, istat)
  deallocate( r, stat=istat )
  call memory_manager('london_module%dealloc', 'r', r(: , :), -1, istat)
  deallocate( dist2, stat=istat )
  call memory_manager('london_module%dealloc', 'dist2', dist2(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

