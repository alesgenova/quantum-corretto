type :: buiol_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nrec0 = 1024
  real(dp) :: fact0 = 1.5_dp
  real(dp) :: fact1 = 1.2_dp
  integer :: size0 = dp
  type(index_of_list), pointer :: ENTRY = > null()
  logical :: is_init_buiol = .false.
  logical :: is_init_buiol = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type buiol_type