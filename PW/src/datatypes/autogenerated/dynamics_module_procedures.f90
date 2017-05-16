['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(dynamics_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( tau_smart(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'tau_smart', tau_smart, istat)

  allocate( force_smart(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'force_smart', force_smart, istat)

  allocate( tau_old(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'tau_old', tau_old, istat)

  allocate( tau_new(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'tau_new', tau_new, istat)

  allocate( tau_ref(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'tau_ref', tau_ref, istat)

  allocate( vel(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'vel', vel, istat)

  allocate( acc(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'acc', acc, istat)

  allocate( chi(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'chi', chi, istat)

  allocate( mass(:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'mass', mass, istat)

  allocate( diff_coeff(:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'diff_coeff', diff_coeff, istat)

  allocate( radial_distr(:,:), stat=istat )
  call memory_manager('dynamics_module%alloc', 'radial_distr', radial_distr, istat)

  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(dynamics_module_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
