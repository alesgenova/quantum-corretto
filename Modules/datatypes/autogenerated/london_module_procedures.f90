['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(london_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(C6_i)) allocate( C6_i(:), stat=istat )
  if (.not. allocated(R_vdw)) allocate( R_vdw(:), stat=istat )
  if (.not. allocated(C6_ij)) allocate( C6_ij(: , :), stat=istat )
  if (.not. allocated(R_sum)) allocate( R_sum(: , :), stat=istat )
  if (.not. allocated(r)) allocate( r(: , :), stat=istat )
  if (.not. allocated(dist2)) allocate( dist2(:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(london_module_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
