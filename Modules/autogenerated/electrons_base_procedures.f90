['alloc', 'init', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(electrons_base_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( f(:), stat=istat )
  call memory_manager('electrons_base%alloc', 'f', f(:), 1, istat)
  allocate( ispin(:), stat=istat )
  call memory_manager('electrons_base%alloc', 'ispin', ispin(:), 1, istat)
  allocate( f_bgrp(:), stat=istat )
  call memory_manager('electrons_base%alloc', 'f_bgrp', f_bgrp(:), 1, istat)
  allocate( ispin_bgrp(:), stat=istat )
  call memory_manager('electrons_base%alloc', 'ispin_bgrp', ispin_bgrp(:), 1, istat)
  allocate( ibgrp_g2l(:), stat=istat )
  call memory_manager('electrons_base%alloc', 'ibgrp_g2l', ibgrp_g2l(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(electrons_base_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(electrons_base_type), intent(inout) :: this
  integer :: istat

  deallocate( f, stat=istat )
  call memory_manager('electrons_base%dealloc', 'f', f(:), -1, istat)
  deallocate( ispin, stat=istat )
  call memory_manager('electrons_base%dealloc', 'ispin', ispin(:), -1, istat)
  deallocate( f_bgrp, stat=istat )
  call memory_manager('electrons_base%dealloc', 'f_bgrp', f_bgrp(:), -1, istat)
  deallocate( ispin_bgrp, stat=istat )
  call memory_manager('electrons_base%dealloc', 'ispin_bgrp', ispin_bgrp(:), -1, istat)
  deallocate( ibgrp_g2l, stat=istat )
  call memory_manager('electrons_base%dealloc', 'ibgrp_g2l', ibgrp_g2l(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

