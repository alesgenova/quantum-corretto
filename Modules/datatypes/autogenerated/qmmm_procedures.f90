['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(qmmm_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(tmp_buf)) allocate( tmp_buf(:,:), stat=istat )
  if (.not. allocated(charge)) allocate( charge(:), stat=istat )
  if (.not. allocated(aradii)) allocate( aradii(:), stat=istat )
  if (.not. allocated(tau_mm)) allocate( tau_mm(:,:), stat=istat )
  if (.not. allocated(force_mm)) allocate( force_mm(:,:), stat=istat )
  if (.not. allocated(force_qm)) allocate( force_qm(:,:), stat=istat )
  if (.not. allocated(tau_mask)) allocate( tau_mask(:), stat=istat )
  if (.not. allocated(rc_mm)) allocate( rc_mm(:), stat=istat )
  if (.not. allocated(charge_mm)) allocate( charge_mm(:), stat=istat )
  if (.not. allocated(mass)) allocate( mass(:), stat=istat )
  if (.not. allocated(types)) allocate( types(:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(qmmm_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
