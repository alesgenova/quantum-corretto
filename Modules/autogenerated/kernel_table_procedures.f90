['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(kernel_table_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( q_mesh(:), stat=istat )
  call memory_manager('kernel_table%alloc', 'q_mesh', q_mesh(:), 1, istat)
  allocate( kernel(:,:,:), stat=istat )
  call memory_manager('kernel_table%alloc', 'kernel', kernel(:,:,:), 1, istat)
  allocate( d2phi_dk2(:,:,:), stat=istat )
  call memory_manager('kernel_table%alloc', 'd2phi_dk2', d2phi_dk2(:,:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(kernel_table_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(kernel_table_type), intent(inout) :: this
  integer :: istat

  deallocate( q_mesh, stat=istat )
  call memory_manager('kernel_table%dealloc', 'q_mesh', q_mesh(:), -1, istat)
  deallocate( kernel, stat=istat )
  call memory_manager('kernel_table%dealloc', 'kernel', kernel(:,:,:), -1, istat)
  deallocate( d2phi_dk2, stat=istat )
  call memory_manager('kernel_table%dealloc', 'd2phi_dk2', d2phi_dk2(:,:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

