['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(symme_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(shell)) allocate( shell(:), stat=istat )
  if (.not. allocated(sendcnt)) allocate( sendcnt(:), stat=istat )
  if (.not. allocated(recvcnt)) allocate( recvcnt(:), stat=istat )
  if (.not. allocated(sdispls)) allocate( sdispls(:), stat=istat )
  if (.not. allocated(rdispls)) allocate( rdispls(:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(symme_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
