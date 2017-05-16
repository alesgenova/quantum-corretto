type :: parameters_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ntypx = 10
  integer :: npsx = ntypx
  integer :: nsx = ntypx
  integer :: npk = 40000
  integer :: lmaxx = 3
  integer :: lqmax = 2*lmaxx+1
  integer :: lqmax = 2*lmaxx+1
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type parameters_type
