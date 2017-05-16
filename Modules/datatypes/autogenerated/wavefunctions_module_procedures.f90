['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(wavefunctions_module_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(evc)) allocate( evc(:,:), stat=istat )
  if (.not. allocated(psic)) allocate( psic(:), stat=istat )
  if (.not. allocated(psic_nc)) allocate( psic_nc(:,:), stat=istat )
  if (.not. allocated(c0_bgrp)) allocate( c0_bgrp(:,:), stat=istat )
  if (.not. allocated(cm_bgrp)) allocate( cm_bgrp(:,:), stat=istat )
  if (.not. allocated(phi_bgrp)) allocate( phi_bgrp(:,:), stat=istat )
  if (.not. allocated(cv0)) allocate( cv0(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(wavefunctions_module_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
