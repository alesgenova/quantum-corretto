['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(bfgs_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( pos(:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'pos', pos(:), 1, istat)
  allocate( grad(:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'grad', grad(:), 1, istat)
  allocate( pos_p(:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'pos_p', pos_p(:), 1, istat)
  allocate( grad_p(:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'grad_p', grad_p(:), 1, istat)
  allocate( inv_hess(:,:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'inv_hess', inv_hess(:,:), 1, istat)
  allocate( metric(:,:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'metric', metric(:,:), 1, istat)
  allocate( h_block(:,:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'h_block', h_block(:,:), 1, istat)
  allocate( hinv_block(:,:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'hinv_block', hinv_block(:,:), 1, istat)
  allocate( step(:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'step', step(:), 1, istat)
  allocate( step_old(:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'step_old', step_old(:), 1, istat)
  allocate( pos_old(:,:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'pos_old', pos_old(:,:), 1, istat)
  allocate( grad_old(:,:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'grad_old', grad_old(:,:), 1, istat)
  allocate( pos_best(:), stat=istat )
  call memory_manager('bfgs_module%alloc', 'pos_best', pos_best(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(bfgs_module_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(bfgs_module_type), intent(inout) :: this
  integer :: istat

  deallocate( pos, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'pos', pos(:), -1, istat)
  deallocate( grad, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'grad', grad(:), -1, istat)
  deallocate( pos_p, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'pos_p', pos_p(:), -1, istat)
  deallocate( grad_p, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'grad_p', grad_p(:), -1, istat)
  deallocate( inv_hess, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'inv_hess', inv_hess(:,:), -1, istat)
  deallocate( metric, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'metric', metric(:,:), -1, istat)
  deallocate( h_block, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'h_block', h_block(:,:), -1, istat)
  deallocate( hinv_block, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'hinv_block', hinv_block(:,:), -1, istat)
  deallocate( step, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'step', step(:), -1, istat)
  deallocate( step_old, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'step_old', step_old(:), -1, istat)
  deallocate( pos_old, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'pos_old', pos_old(:,:), -1, istat)
  deallocate( grad_old, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'grad_old', grad_old(:,:), -1, istat)
  deallocate( pos_best, stat=istat )
  call memory_manager('bfgs_module%dealloc', 'pos_best', pos_best(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

