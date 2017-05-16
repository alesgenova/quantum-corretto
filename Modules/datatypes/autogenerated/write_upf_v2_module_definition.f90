type :: write_upf_v2_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nwfs
  character(len=32) :: pseud
  character(len=2), dimension(:), pointer :: els
  integer, dimension(:), pointer :: nns
  integer, dimension(:), pointer :: lls
  real(dp), dimension(:), pointer :: ocs
  real(dp), dimension(:), pointer :: rcut
  real(dp), dimension(:), pointer :: rcutus
  real(dp), dimension(:), pointer :: enls
  real(dp), dimension(:), pointer :: enls
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type write_upf_v2_module_type
