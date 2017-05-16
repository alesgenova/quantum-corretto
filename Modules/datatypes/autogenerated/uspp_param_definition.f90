type :: uspp_param_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(pseudo_upf), allocatable, dimension(:) :: upf
  integer, dimension(npsx) :: nh
  integer :: nhm
  integer :: nbetam
  integer, dimension(3,npsx) :: iver
  integer :: lmaxkb
  integer :: lmaxq
  logical, dimension(npsx) :: newpseudo
  logical, dimension(npsx) :: oldvan
  integer :: nvb
  integer, dimension(npsx) :: ish
  integer, dimension(npsx) :: ish
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type uspp_param_type
