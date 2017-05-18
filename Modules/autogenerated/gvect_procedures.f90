['alloc', 'init', 'update', 'dealloc']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(gvect_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( nl(:), stat=istat )
  call memory_manager('gvect%alloc', 'nl', nl(:), 1, istat)
  allocate( nlm(:), stat=istat )
  call memory_manager('gvect%alloc', 'nlm', nlm(:), 1, istat)
  allocate( gg(:), stat=istat )
  call memory_manager('gvect%alloc', 'gg', gg(:), 1, istat)
  allocate( igtongl(:), stat=istat )
  call memory_manager('gvect%alloc', 'igtongl', igtongl(:), 1, istat)
  allocate( g(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'g', g(:,:), 1, istat)
  allocate( mill(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'mill', mill(:,:), 1, istat)
  allocate( ig_l2g(:), stat=istat )
  call memory_manager('gvect%alloc', 'ig_l2g', ig_l2g(:), 1, istat)
  allocate( sortedig_l2g(:), stat=istat )
  call memory_manager('gvect%alloc', 'sortedig_l2g', sortedig_l2g(:), 1, istat)
  allocate( mill_g(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'mill_g', mill_g(:,:), 1, istat)
  allocate( eigts1(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'eigts1', eigts1(:,:), 1, istat)
  allocate( eigts2(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'eigts2', eigts2(:,:), 1, istat)
  allocate( eigts3(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'eigts3', eigts3(:,:), 1, istat)
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none

  class(gvect_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  use memory_manager_module, only: memory_manager

  implicit none

  class(gvect_type), intent(inout) :: this
  integer :: istat

  deallocate( nl, stat=istat )
  call memory_manager('gvect%dealloc', 'nl', nl(:), -1, istat)
  deallocate( nlm, stat=istat )
  call memory_manager('gvect%dealloc', 'nlm', nlm(:), -1, istat)
  deallocate( gg, stat=istat )
  call memory_manager('gvect%dealloc', 'gg', gg(:), -1, istat)
  deallocate( igtongl, stat=istat )
  call memory_manager('gvect%dealloc', 'igtongl', igtongl(:), -1, istat)
  deallocate( g, stat=istat )
  call memory_manager('gvect%dealloc', 'g', g(:,:), -1, istat)
  deallocate( mill, stat=istat )
  call memory_manager('gvect%dealloc', 'mill', mill(:,:), -1, istat)
  deallocate( ig_l2g, stat=istat )
  call memory_manager('gvect%dealloc', 'ig_l2g', ig_l2g(:), -1, istat)
  deallocate( sortedig_l2g, stat=istat )
  call memory_manager('gvect%dealloc', 'sortedig_l2g', sortedig_l2g(:), -1, istat)
  deallocate( mill_g, stat=istat )
  call memory_manager('gvect%dealloc', 'mill_g', mill_g(:,:), -1, istat)
  deallocate( eigts1, stat=istat )
  call memory_manager('gvect%dealloc', 'eigts1', eigts1(:,:), -1, istat)
  deallocate( eigts2, stat=istat )
  call memory_manager('gvect%dealloc', 'eigts2', eigts2(:,:), -1, istat)
  deallocate( eigts3, stat=istat )
  call memory_manager('gvect%dealloc', 'eigts3', eigts3(:,:), -1, istat)
  this%is_alloc = .false.
  return
end subroutine dealloc

