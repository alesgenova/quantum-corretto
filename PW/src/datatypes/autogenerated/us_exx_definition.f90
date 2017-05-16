type :: us_exx_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(bec_type), allocatable, dimension(:) :: becxx
  type(bec_type), allocatable, dimension(:) :: becxx0
  complex(dp), allocatable, dimension(:,:) :: qgm
  complex(dp), allocatable, dimension(:,:) :: qgm
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type us_exx_type
