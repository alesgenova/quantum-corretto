type :: vlocal_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  complex(dp), allocatable, dimension(:,:) :: strf
  real(dp), allocatable, dimension(:,:) :: vloc
  real(dp), allocatable, dimension(:,:) :: vloc
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type vlocal_type
