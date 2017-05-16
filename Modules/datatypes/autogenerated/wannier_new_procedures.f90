['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(wannier_new_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(wan_pot)) allocate( wan_pot(:,:), stat=istat )
  if (.not. allocated(wannier_energy)) allocate( wannier_energy(:,:), stat=istat )
  if (.not. allocated(wannier_occ)) allocate( wannier_occ(:,:,:), stat=istat )
  if (.not. allocated(pp)) allocate( pp(:,:), stat=istat )
  if (.not. allocated(coef)) allocate( coef(:,:,:), stat=istat )
  if (.not. allocated(wan_in)) allocate( wan_in(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wannier_new_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
