['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(input_parameters_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(rd_pos)) allocate( rd_pos(:,:), stat=istat )
  if (.not. allocated(sp_pos)) allocate( sp_pos(:), stat=istat )
  if (.not. allocated(if_pos)) allocate( if_pos(:,:), stat=istat )
  if (.not. allocated(na_inp)) allocate( na_inp(:), stat=istat )
  if (.not. allocated(rd_vel)) allocate( rd_vel(:,:), stat=istat )
  if (.not. allocated(sp_vel)) allocate( sp_vel(:), stat=istat )
  if (.not. allocated(rd_for)) allocate( rd_for(:,:), stat=istat )
  if (.not. allocated(xk)) allocate( xk(:,:), stat=istat )
  if (.not. allocated(wk)) allocate( wk(:), stat=istat )
  if (.not. allocated(f_inp)) allocate( f_inp(:,:), stat=istat )
  if (.not. allocated(constr_type_inp)) allocate( constr_type_inp(:), stat=istat )
  if (.not. allocated(constr_inp)) allocate( constr_inp(:,:), stat=istat )
  if (.not. allocated(constr_target_inp)) allocate( constr_target_inp(:), stat=istat )
  if (.not. allocated(constr_target_set)) allocate( constr_target_set(:), stat=istat )
  if (.not. allocated(iprnks)) allocate( iprnks(:, :), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(input_parameters_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
