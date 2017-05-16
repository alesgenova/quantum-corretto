['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(scf_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(of_r)) allocate( of_r(:,:), stat=istat )
  if (.not. allocated(of_g)) allocate( of_g(:,:), stat=istat )
  if (.not. allocated(kin_r)) allocate( kin_r(:,:), stat=istat )
  if (.not. allocated(kin_g)) allocate( kin_g(:,:), stat=istat )
  if (.not. allocated(ns)) allocate( ns(:,:,:,:), stat=istat )
  if (.not. allocated(ns_nc)) allocate( ns_nc(:,:,:,:), stat=istat )
  if (.not. allocated(bec)) allocate( bec(:,:,:), stat=istat )
  if (.not. allocated(vltot)) allocate( vltot(:), stat=istat )
  if (.not. allocated(vrs)) allocate( vrs(:,:), stat=istat )
  if (.not. allocated(rho_core)) allocate( rho_core(:), stat=istat )
  if (.not. allocated(kedtau)) allocate( kedtau(:,:), stat=istat )
  if (.not. allocated(rhog_core)) allocate( rhog_core(:), stat=istat )
  if (.not. allocated(io_buffer)) allocate( io_buffer(:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(scf_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
