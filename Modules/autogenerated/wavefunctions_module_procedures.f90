['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wavefunctions_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( evc(:,:), stat=istat )
  call memory_manager('wavefunctions_module%alloc', 'evc', evc(:,:), 1, istat)
  allocate( psic(:), stat=istat )
  call memory_manager('wavefunctions_module%alloc', 'psic', psic(:), 1, istat)
  allocate( psic_nc(:,:), stat=istat )
  call memory_manager('wavefunctions_module%alloc', 'psic_nc', psic_nc(:,:), 1, istat)
  allocate( c0_bgrp(:,:), stat=istat )
  call memory_manager('wavefunctions_module%alloc', 'c0_bgrp', c0_bgrp(:,:), 1, istat)
  allocate( cm_bgrp(:,:), stat=istat )
  call memory_manager('wavefunctions_module%alloc', 'cm_bgrp', cm_bgrp(:,:), 1, istat)
  allocate( phi_bgrp(:,:), stat=istat )
  call memory_manager('wavefunctions_module%alloc', 'phi_bgrp', phi_bgrp(:,:), 1, istat)
  allocate( cv0(:,:), stat=istat )
  call memory_manager('wavefunctions_module%alloc', 'cv0', cv0(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wavefunctions_module_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(wavefunctions_module_type), intent(inout) :: this
  integer :: istat

  deallocate( evc, stat=istat )
  call memory_manager('wavefunctions_module%dealloc', 'evc', evc(:,:), -1, istat)
  deallocate( psic, stat=istat )
  call memory_manager('wavefunctions_module%dealloc', 'psic', psic(:), -1, istat)
  deallocate( psic_nc, stat=istat )
  call memory_manager('wavefunctions_module%dealloc', 'psic_nc', psic_nc(:,:), -1, istat)
  deallocate( c0_bgrp, stat=istat )
  call memory_manager('wavefunctions_module%dealloc', 'c0_bgrp', c0_bgrp(:,:), -1, istat)
  deallocate( cm_bgrp, stat=istat )
  call memory_manager('wavefunctions_module%dealloc', 'cm_bgrp', cm_bgrp(:,:), -1, istat)
  deallocate( phi_bgrp, stat=istat )
  call memory_manager('wavefunctions_module%dealloc', 'phi_bgrp', phi_bgrp(:,:), -1, istat)
  deallocate( cv0, stat=istat )
  call memory_manager('wavefunctions_module%dealloc', 'cv0', cv0(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

