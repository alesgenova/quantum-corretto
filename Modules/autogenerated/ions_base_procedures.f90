['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(ions_base_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( na(:), stat=istat )
  call memory_manager('ions_base%alloc', 'na', na(:), 1, istat)
  allocate( zv(:), stat=istat )
  call memory_manager('ions_base%alloc', 'zv', zv(:), 1, istat)
  allocate( amass(:), stat=istat )
  call memory_manager('ions_base%alloc', 'amass', amass(:), 1, istat)
  allocate( rcmax(:), stat=istat )
  call memory_manager('ions_base%alloc', 'rcmax', rcmax(:), 1, istat)
  allocate( ityp(:), stat=istat )
  call memory_manager('ions_base%alloc', 'ityp', ityp(:), 1, istat)
  allocate( tau(:,:), stat=istat )
  call memory_manager('ions_base%alloc', 'tau', tau(:,:), 1, istat)
  allocate( vel(:,:), stat=istat )
  call memory_manager('ions_base%alloc', 'vel', vel(:,:), 1, istat)
  allocate( tau_srt(:,:), stat=istat )
  call memory_manager('ions_base%alloc', 'tau_srt', tau_srt(:,:), 1, istat)
  allocate( vel_srt(:,:), stat=istat )
  call memory_manager('ions_base%alloc', 'vel_srt', vel_srt(:,:), 1, istat)
  allocate( ind_srt(:), stat=istat )
  call memory_manager('ions_base%alloc', 'ind_srt', ind_srt(:), 1, istat)
  allocate( ind_bck(:), stat=istat )
  call memory_manager('ions_base%alloc', 'ind_bck', ind_bck(:), 1, istat)
  allocate( atm(:), stat=istat )
  call memory_manager('ions_base%alloc', 'atm', atm(:), 1, istat)
  allocate( label_srt(:), stat=istat )
  call memory_manager('ions_base%alloc', 'label_srt', label_srt(:), 1, istat)
  allocate( if_pos(:,:), stat=istat )
  call memory_manager('ions_base%alloc', 'if_pos', if_pos(:,:), 1, istat)
  allocate( iforce(:,:), stat=istat )
  call memory_manager('ions_base%alloc', 'iforce', iforce(:,:), 1, istat)
  allocate( taui(:,:), stat=istat )
  call memory_manager('ions_base%alloc', 'taui', taui(:,:), 1, istat)
  allocate( extfor(:,:), stat=istat )
  call memory_manager('ions_base%alloc', 'extfor', extfor(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(ions_base_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(ions_base_type), intent(inout) :: this
  integer :: istat

  deallocate( na, stat=istat )
  call memory_manager('ions_base%dealloc', 'na', na(:), -1, istat)
  deallocate( zv, stat=istat )
  call memory_manager('ions_base%dealloc', 'zv', zv(:), -1, istat)
  deallocate( amass, stat=istat )
  call memory_manager('ions_base%dealloc', 'amass', amass(:), -1, istat)
  deallocate( rcmax, stat=istat )
  call memory_manager('ions_base%dealloc', 'rcmax', rcmax(:), -1, istat)
  deallocate( ityp, stat=istat )
  call memory_manager('ions_base%dealloc', 'ityp', ityp(:), -1, istat)
  deallocate( tau, stat=istat )
  call memory_manager('ions_base%dealloc', 'tau', tau(:,:), -1, istat)
  deallocate( vel, stat=istat )
  call memory_manager('ions_base%dealloc', 'vel', vel(:,:), -1, istat)
  deallocate( tau_srt, stat=istat )
  call memory_manager('ions_base%dealloc', 'tau_srt', tau_srt(:,:), -1, istat)
  deallocate( vel_srt, stat=istat )
  call memory_manager('ions_base%dealloc', 'vel_srt', vel_srt(:,:), -1, istat)
  deallocate( ind_srt, stat=istat )
  call memory_manager('ions_base%dealloc', 'ind_srt', ind_srt(:), -1, istat)
  deallocate( ind_bck, stat=istat )
  call memory_manager('ions_base%dealloc', 'ind_bck', ind_bck(:), -1, istat)
  deallocate( atm, stat=istat )
  call memory_manager('ions_base%dealloc', 'atm', atm(:), -1, istat)
  deallocate( label_srt, stat=istat )
  call memory_manager('ions_base%dealloc', 'label_srt', label_srt(:), -1, istat)
  deallocate( if_pos, stat=istat )
  call memory_manager('ions_base%dealloc', 'if_pos', if_pos(:,:), -1, istat)
  deallocate( iforce, stat=istat )
  call memory_manager('ions_base%dealloc', 'iforce', iforce(:,:), -1, istat)
  deallocate( taui, stat=istat )
  call memory_manager('ions_base%dealloc', 'taui', taui(:,:), -1, istat)
  deallocate( extfor, stat=istat )
  call memory_manager('ions_base%dealloc', 'extfor', extfor(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

