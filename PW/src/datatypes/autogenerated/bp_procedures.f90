['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(bp_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(evcel)) allocate( evcel(:,:), stat=istat )
  if (.not. allocated(evcelm)) allocate( evcelm(:,:,:), stat=istat )
  if (.not. allocated(evcelp)) allocate( evcelp(:,:,:), stat=istat )
  if (.not. allocated(fact_hepsi)) allocate( fact_hepsi(:,:), stat=istat )
  if (.not. allocated(mapgp_global)) allocate( mapgp_global(:,:), stat=istat )
  if (.not. allocated(mapgm_global)) allocate( mapgm_global(:,:), stat=istat )
  if (.not. allocated(nx_el)) allocate( nx_el(:,:), stat=istat )
  if (.not. allocated(mapg_owner)) allocate( mapg_owner(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(bp_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
