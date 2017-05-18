['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(mytime_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( cputime(:), stat=istat )
  call memory_manager('mytime%alloc', 'cputime', cputime(:), 1, istat)
  allocate( t0cpu(:), stat=istat )
  call memory_manager('mytime%alloc', 't0cpu', t0cpu(:), 1, istat)
  allocate( walltime(:), stat=istat )
  call memory_manager('mytime%alloc', 'walltime', walltime(:), 1, istat)
  allocate( t0wall(:), stat=istat )
  call memory_manager('mytime%alloc', 't0wall', t0wall(:), 1, istat)
  allocate( clock_label(:), stat=istat )
  call memory_manager('mytime%alloc', 'clock_label', clock_label(:), 1, istat)
  allocate( called(:), stat=istat )
  call memory_manager('mytime%alloc', 'called', called(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(mytime_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(mytime_type), intent(inout) :: this
  integer :: istat

  deallocate( cputime, stat=istat )
  call memory_manager('mytime%dealloc', 'cputime', cputime(:), -1, istat)
  deallocate( t0cpu, stat=istat )
  call memory_manager('mytime%dealloc', 't0cpu', t0cpu(:), -1, istat)
  deallocate( walltime, stat=istat )
  call memory_manager('mytime%dealloc', 'walltime', walltime(:), -1, istat)
  deallocate( t0wall, stat=istat )
  call memory_manager('mytime%dealloc', 't0wall', t0wall(:), -1, istat)
  deallocate( clock_label, stat=istat )
  call memory_manager('mytime%dealloc', 'clock_label', clock_label(:), -1, istat)
  deallocate( called, stat=istat )
  call memory_manager('mytime%dealloc', 'called', called(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

