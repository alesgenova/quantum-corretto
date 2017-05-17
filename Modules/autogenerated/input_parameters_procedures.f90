['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(input_parameters_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( rd_pos(:,:), stat=istat )
  call memory_manager('input_parameters%alloc', 'rd_pos', rd_pos(:,:), 1, istat)
  allocate( sp_pos(:), stat=istat )
  call memory_manager('input_parameters%alloc', 'sp_pos', sp_pos(:), 1, istat)
  allocate( if_pos(:,:), stat=istat )
  call memory_manager('input_parameters%alloc', 'if_pos', if_pos(:,:), 1, istat)
  allocate( na_inp(:), stat=istat )
  call memory_manager('input_parameters%alloc', 'na_inp', na_inp(:), 1, istat)
  allocate( rd_vel(:,:), stat=istat )
  call memory_manager('input_parameters%alloc', 'rd_vel', rd_vel(:,:), 1, istat)
  allocate( sp_vel(:), stat=istat )
  call memory_manager('input_parameters%alloc', 'sp_vel', sp_vel(:), 1, istat)
  allocate( rd_for(:,:), stat=istat )
  call memory_manager('input_parameters%alloc', 'rd_for', rd_for(:,:), 1, istat)
  allocate( xk(:,:), stat=istat )
  call memory_manager('input_parameters%alloc', 'xk', xk(:,:), 1, istat)
  allocate( wk(:), stat=istat )
  call memory_manager('input_parameters%alloc', 'wk', wk(:), 1, istat)
  allocate( f_inp(:,:), stat=istat )
  call memory_manager('input_parameters%alloc', 'f_inp', f_inp(:,:), 1, istat)
  allocate( constr_type_inp(:), stat=istat )
  call memory_manager('input_parameters%alloc', 'constr_type_inp', constr_type_inp(:), 1, istat)
  allocate( constr_inp(:,:), stat=istat )
  call memory_manager('input_parameters%alloc', 'constr_inp', constr_inp(:,:), 1, istat)
  allocate( constr_target_inp(:), stat=istat )
  call memory_manager('input_parameters%alloc', 'constr_target_inp', constr_target_inp(:), 1, istat)
  allocate( constr_target_set(:), stat=istat )
  call memory_manager('input_parameters%alloc', 'constr_target_set', constr_target_set(:), 1, istat)
  allocate( iprnks(:, :), stat=istat )
  call memory_manager('input_parameters%alloc', 'iprnks', iprnks(:, :), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(input_parameters_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(input_parameters_type), intent(inout) :: this
  integer :: istat

  deallocate( rd_pos, stat=istat )
  call memory_manager('input_parameters%dealloc', 'rd_pos', rd_pos(:,:), -1, istat)
  deallocate( sp_pos, stat=istat )
  call memory_manager('input_parameters%dealloc', 'sp_pos', sp_pos(:), -1, istat)
  deallocate( if_pos, stat=istat )
  call memory_manager('input_parameters%dealloc', 'if_pos', if_pos(:,:), -1, istat)
  deallocate( na_inp, stat=istat )
  call memory_manager('input_parameters%dealloc', 'na_inp', na_inp(:), -1, istat)
  deallocate( rd_vel, stat=istat )
  call memory_manager('input_parameters%dealloc', 'rd_vel', rd_vel(:,:), -1, istat)
  deallocate( sp_vel, stat=istat )
  call memory_manager('input_parameters%dealloc', 'sp_vel', sp_vel(:), -1, istat)
  deallocate( rd_for, stat=istat )
  call memory_manager('input_parameters%dealloc', 'rd_for', rd_for(:,:), -1, istat)
  deallocate( xk, stat=istat )
  call memory_manager('input_parameters%dealloc', 'xk', xk(:,:), -1, istat)
  deallocate( wk, stat=istat )
  call memory_manager('input_parameters%dealloc', 'wk', wk(:), -1, istat)
  deallocate( f_inp, stat=istat )
  call memory_manager('input_parameters%dealloc', 'f_inp', f_inp(:,:), -1, istat)
  deallocate( constr_type_inp, stat=istat )
  call memory_manager('input_parameters%dealloc', 'constr_type_inp', constr_type_inp(:), -1, istat)
  deallocate( constr_inp, stat=istat )
  call memory_manager('input_parameters%dealloc', 'constr_inp', constr_inp(:,:), -1, istat)
  deallocate( constr_target_inp, stat=istat )
  call memory_manager('input_parameters%dealloc', 'constr_target_inp', constr_target_inp(:), -1, istat)
  deallocate( constr_target_set, stat=istat )
  call memory_manager('input_parameters%dealloc', 'constr_target_set', constr_target_set(:), -1, istat)
  deallocate( iprnks, stat=istat )
  call memory_manager('input_parameters%dealloc', 'iprnks', iprnks(:, :), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

