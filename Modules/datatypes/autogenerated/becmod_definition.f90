type :: becmod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:,:) :: r
  complex(dp), allocatable, dimension(:,:) :: k
  complex(dp), allocatable, dimension(:,:,:) :: nc
  integer :: comm
  integer :: nbnd
  integer :: nproc
  integer :: mype
  integer :: nbnd_loc
  integer :: ibnd_begin
  type(bec_type) :: becp
  type(bec_type) :: becp
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type becmod_type
