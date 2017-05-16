['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(constraints_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(constr_type)) allocate( constr_type(:), stat=istat )
  if (.not. allocated(constr)) allocate( constr(:,:), stat=istat )
  if (.not. allocated(constr_target)) allocate( constr_target(:), stat=istat )
  if (.not. allocated(lagrange)) allocate( lagrange(:), stat=istat )
  if (.not. allocated(gp)) allocate( gp(:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(constraints_module_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
