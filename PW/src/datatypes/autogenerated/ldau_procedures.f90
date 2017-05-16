['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(ldau_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(wfcU)) allocate( wfcU(:,:), stat=istat )
  if (.not. allocated(d_spin_ldau)) allocate( d_spin_ldau(:,:,:), stat=istat )
  if (.not. allocated(oatwfc)) allocate( oatwfc(:), stat=istat )
  if (.not. allocated(offsetU)) allocate( offsetU(:), stat=istat )
  if (.not. allocated(q_ae)) allocate( q_ae(:,:,:), stat=istat )
  if (.not. allocated(q_ps)) allocate( q_ps(:,:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(ldau_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
