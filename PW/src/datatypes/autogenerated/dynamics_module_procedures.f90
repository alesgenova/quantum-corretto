['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(dynamics_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(tau_smart)) allocate( tau_smart(:,:), stat=istat )
  if (.not. allocated(force_smart)) allocate( force_smart(:,:), stat=istat )
  if (.not. allocated(tau_old)) allocate( tau_old(:,:), stat=istat )
  if (.not. allocated(tau_new)) allocate( tau_new(:,:), stat=istat )
  if (.not. allocated(tau_ref)) allocate( tau_ref(:,:), stat=istat )
  if (.not. allocated(vel)) allocate( vel(:,:), stat=istat )
  if (.not. allocated(acc)) allocate( acc(:,:), stat=istat )
  if (.not. allocated(chi)) allocate( chi(:,:), stat=istat )
  if (.not. allocated(mass)) allocate( mass(:), stat=istat )
  if (.not. allocated(diff_coeff)) allocate( diff_coeff(:), stat=istat )
  if (.not. allocated(radial_distr)) allocate( radial_distr(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(dynamics_module_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
