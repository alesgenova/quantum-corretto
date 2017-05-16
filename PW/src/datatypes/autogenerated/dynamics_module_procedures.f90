['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(dynamics_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( tau_smart(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'tau_smart', tau_smart(:,:), 1, istat)
  allocate( force_smart(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'force_smart', force_smart(:,:), 1, istat)
  allocate( tau_old(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'tau_old', tau_old(:,:), 1, istat)
  allocate( tau_new(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'tau_new', tau_new(:,:), 1, istat)
  allocate( tau_ref(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'tau_ref', tau_ref(:,:), 1, istat)
  allocate( vel(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'vel', vel(:,:), 1, istat)
  allocate( acc(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'acc', acc(:,:), 1, istat)
  allocate( chi(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'chi', chi(:,:), 1, istat)
  allocate( mass(:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'mass', mass(:), 1, istat)
  allocate( diff_coeff(:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'diff_coeff', diff_coeff(:), 1, istat)
  allocate( radial_distr(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'radial_distr', radial_distr(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(dynamics_module_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(dynamics_module_type), intent(inout) :: this
  integer :: istat

  deallocate( tau_smart, stat=istat )
  call memory_manager('dynamics_module%dealloc', 'tau_smart', tau_smart(:,:), -1, istat)
  deallocate( force_smart, stat=istat )
  call memory_manager('dynamics_module%dealloc', 'force_smart', force_smart(:,:), -1, istat)
  deallocate( tau_old, stat=istat )
  call memory_manager('dynamics_module%dealloc', 'tau_old', tau_old(:,:), -1, istat)
  deallocate( tau_new, stat=istat )
  call memory_manager('dynamics_module%dealloc', 'tau_new', tau_new(:,:), -1, istat)
  deallocate( tau_ref, stat=istat )
  call memory_manager('dynamics_module%dealloc', 'tau_ref', tau_ref(:,:), -1, istat)
  deallocate( vel, stat=istat )
  call memory_manager('dynamics_module%dealloc', 'vel', vel(:,:), -1, istat)
  deallocate( acc, stat=istat )
  call memory_manager('dynamics_module%dealloc', 'acc', acc(:,:), -1, istat)
  deallocate( chi, stat=istat )
  call memory_manager('dynamics_module%dealloc', 'chi', chi(:,:), -1, istat)
  deallocate( mass, stat=istat )
  call memory_manager('dynamics_module%dealloc', 'mass', mass(:), -1, istat)
  deallocate( diff_coeff, stat=istat )
  call memory_manager('dynamics_module%dealloc', 'diff_coeff', diff_coeff(:), -1, istat)
  deallocate( radial_distr, stat=istat )
  call memory_manager('dynamics_module%dealloc', 'radial_distr', radial_distr(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

