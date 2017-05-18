['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(uspp_param_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( upf(:), stat=istat )
  call memory_manager('uspp_param%alloc', 'upf', upf(:), 1, istat)
  allocate( nh(:), stat=istat )
  call memory_manager('uspp_param%alloc', 'nh', nh(:), 1, istat)
  allocate( iver(:,:), stat=istat )
  call memory_manager('uspp_param%alloc', 'iver', iver(:,:), 1, istat)
  allocate( newpseudo(:), stat=istat )
  call memory_manager('uspp_param%alloc', 'newpseudo', newpseudo(:), 1, istat)
  allocate( oldvan(:), stat=istat )
  call memory_manager('uspp_param%alloc', 'oldvan', oldvan(:), 1, istat)
  allocate( ish(:), stat=istat )
  call memory_manager('uspp_param%alloc', 'ish', ish(:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(uspp_param_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(uspp_param_type), intent(inout) :: this
  integer :: istat

  deallocate( upf, stat=istat )
  call memory_manager('uspp_param%dealloc', 'upf', upf(:), -1, istat)
  deallocate( nh, stat=istat )
  call memory_manager('uspp_param%dealloc', 'nh', nh(:), -1, istat)
  deallocate( iver, stat=istat )
  call memory_manager('uspp_param%dealloc', 'iver', iver(:,:), -1, istat)
  deallocate( newpseudo, stat=istat )
  call memory_manager('uspp_param%dealloc', 'newpseudo', newpseudo(:), -1, istat)
  deallocate( oldvan, stat=istat )
  call memory_manager('uspp_param%dealloc', 'oldvan', oldvan(:), -1, istat)
  deallocate( ish, stat=istat )
  call memory_manager('uspp_param%dealloc', 'ish', ish(:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

