subroutine allocate(this, n0)
  implicit none

  class(gvect_type), intent(inout) :: this
  integer, intent(in) :: n0

  allocate( nl(:) )
  allocate( nlm(:) )
  allocate( gg(:) )
  allocate( igtongl(:) )
  allocate( g(:,:) )
  allocate( mill(:,:) )
  allocate( ig_l2g(:) )
  allocate( sortedig_l2g(:) )
  allocate( mill_g(:,:) )
  allocate( eigts1(:,:) )
  allocate( eigts2(:,:) )
  allocate( eigts3(:,:) )
end subroutine allocate

subroutine init(this)
  implicit none

  class(gvect_type), intent(inout) :: this

end subroutine init
