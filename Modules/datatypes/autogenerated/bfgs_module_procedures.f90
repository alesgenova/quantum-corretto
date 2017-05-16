['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(bfgs_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(pos)) allocate( pos(:), stat=istat )
  if (.not. allocated(grad)) allocate( grad(:), stat=istat )
  if (.not. allocated(pos_p)) allocate( pos_p(:), stat=istat )
  if (.not. allocated(grad_p)) allocate( grad_p(:), stat=istat )
  if (.not. allocated(inv_hess)) allocate( inv_hess(:,:), stat=istat )
  if (.not. allocated(metric)) allocate( metric(:,:), stat=istat )
  if (.not. allocated(h_block)) allocate( h_block(:,:), stat=istat )
  if (.not. allocated(hinv_block)) allocate( hinv_block(:,:), stat=istat )
  if (.not. allocated(step)) allocate( step(:), stat=istat )
  if (.not. allocated(step_old)) allocate( step_old(:), stat=istat )
  if (.not. allocated(pos_old)) allocate( pos_old(:,:), stat=istat )
  if (.not. allocated(grad_old)) allocate( grad_old(:,:), stat=istat )
  if (.not. allocated(pos_best)) allocate( pos_best(:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(bfgs_module_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
