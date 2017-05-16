['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(electrons_base_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(f)) allocate( f(:), stat=istat )
  if (.not. allocated(ispin)) allocate( ispin(:), stat=istat )
  if (.not. allocated(f_bgrp)) allocate( f_bgrp(:), stat=istat )
  if (.not. allocated(ispin_bgrp)) allocate( ispin_bgrp(:), stat=istat )
  if (.not. allocated(ibgrp_g2l)) allocate( ibgrp_g2l(:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(electrons_base_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
