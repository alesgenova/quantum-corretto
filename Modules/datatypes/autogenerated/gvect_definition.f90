type :: gvect_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ngm = 0
  integer :: ngm_g = 0
  integer :: ngl = 0
  integer :: ngmx = 0
  real(dp) :: ecutrho = 0.0_dp
  real(dp) :: gcutm = 0.0_dp
  integer, allocatable, dimension(:) :: nl
  integer, allocatable, dimension(:) :: nlm
  integer :: gstart = 2
  real(dp), allocatable, dimension(:) :: gg
  real(dp), dimension(:), pointer :: gl
  integer, allocatable, dimension(:) :: igtongl
  real(dp), allocatable, dimension(:,:) :: g
  integer, allocatable, dimension(:,:) :: mill
  integer, allocatable, dimension(:) :: ig_l2g
  integer, allocatable, dimension(:) :: sortedig_l2g
  integer, allocatable, dimension(:,:) :: mill_g
  complex(dp), allocatable, dimension(:,:) :: eigts1
  complex(dp), allocatable, dimension(:,:) :: eigts2
  complex(dp), allocatable, dimension(:,:) :: eigts3
  complex(dp), allocatable, dimension(:,:) :: eigts3
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type gvect_type
