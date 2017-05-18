['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(noncollin_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( pointlist(:), stat=istat )
  call memory_manager('noncollin_module%alloc', 'pointlist', pointlist(:), 1, istat)
  allocate( angle1(:), stat=istat )
  call memory_manager('noncollin_module%alloc', 'angle1', angle1(:), 1, istat)
  allocate( angle2(:), stat=istat )
  call memory_manager('noncollin_module%alloc', 'angle2', angle2(:), 1, istat)
  allocate( mcons(:,:), stat=istat )
  call memory_manager('noncollin_module%alloc', 'mcons', mcons(:,:), 1, istat)
  allocate( r_m(:), stat=istat )
  call memory_manager('noncollin_module%alloc', 'r_m', r_m(:), 1, istat)
  allocate( factlist(:), stat=istat )
  call memory_manager('noncollin_module%alloc', 'factlist', factlist(:), 1, istat)
  allocate( r_loc(:), stat=istat )
  call memory_manager('noncollin_module%alloc', 'r_loc', r_loc(:), 1, istat)
  allocate( m_loc(:,:), stat=istat )
  call memory_manager('noncollin_module%alloc', 'm_loc', m_loc(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(noncollin_module_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(noncollin_module_type), intent(inout) :: this
  integer :: istat

  deallocate( pointlist, stat=istat )
  call memory_manager('noncollin_module%dealloc', 'pointlist', pointlist(:), -1, istat)
  deallocate( angle1, stat=istat )
  call memory_manager('noncollin_module%dealloc', 'angle1', angle1(:), -1, istat)
  deallocate( angle2, stat=istat )
  call memory_manager('noncollin_module%dealloc', 'angle2', angle2(:), -1, istat)
  deallocate( mcons, stat=istat )
  call memory_manager('noncollin_module%dealloc', 'mcons', mcons(:,:), -1, istat)
  deallocate( r_m, stat=istat )
  call memory_manager('noncollin_module%dealloc', 'r_m', r_m(:), -1, istat)
  deallocate( factlist, stat=istat )
  call memory_manager('noncollin_module%dealloc', 'factlist', factlist(:), -1, istat)
  deallocate( r_loc, stat=istat )
  call memory_manager('noncollin_module%dealloc', 'r_loc', r_loc(:), -1, istat)
  deallocate( m_loc, stat=istat )
  call memory_manager('noncollin_module%dealloc', 'm_loc', m_loc(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

