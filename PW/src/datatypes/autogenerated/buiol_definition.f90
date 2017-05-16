type :: buiol_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nrec0 = 1024
  real(dp) :: fact0 = 1.5_dp
  real(dp) :: fact1 = 1.2_dp
  integer :: size0 = dp
  type(data_in_the_list), dimension(:), pointer :: index
  integer :: nrec
  integer :: unit
  integer :: recl
  character(len=256) :: extension
  character(len=256) :: save_dir
  type(index_of_list), pointer :: next = > null()
  complex(dp), dimension(:), pointer :: data = > null()
  type(index_of_list), pointer :: ENTRY = > null()
  logical :: is_init_buiol = .false.
  logical :: is_init_buiol = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type buiol_type
