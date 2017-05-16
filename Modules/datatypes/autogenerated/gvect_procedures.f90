['alloc', 'init']

subroutine alloc(this, n0)
  use memory_manager_module, only: memory_manager

  implicit none

  class(gvect_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  allocate( nl(:), stat=istat )
  call memory_manager('gvect%alloc', 'nl', nl, istat)
  allocate( nlm(:), stat=istat )
  call memory_manager('gvect%alloc', 'nlm', nlm, istat)
  allocate( gg(:), stat=istat )
  call memory_manager('gvect%alloc', 'gg', gg, istat)
  allocate( igtongl(:), stat=istat )
  call memory_manager('gvect%alloc', 'igtongl', igtongl, istat)
  allocate( g(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'g', g, istat)
  allocate( mill(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'mill', mill, istat)
  allocate( ig_l2g(:), stat=istat )
  call memory_manager('gvect%alloc', 'ig_l2g', ig_l2g, istat)
  allocate( sortedig_l2g(:), stat=istat )
  call memory_manager('gvect%alloc', 'sortedig_l2g', sortedig_l2g, istat)
  allocate( mill_g(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'mill_g', mill_g, istat)
  allocate( eigts1(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'eigts1', eigts1, istat)
  allocate( eigts2(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'eigts2', eigts2, istat)
  allocate( eigts3(:,:), stat=istat )
  call memory_manager('gvect%alloc', 'eigts3', eigts3, istat)
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(gvect_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
