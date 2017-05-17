type :: basis_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: natomwfc
  complex(dp), allocatable, dimension(:,:) :: swfcatom
  character(len=30) :: starting_wfc
  character(len=30) :: starting_pot
  character(len=30) :: startingconfig
  character(len=30) :: startingconfig
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type basis_type
