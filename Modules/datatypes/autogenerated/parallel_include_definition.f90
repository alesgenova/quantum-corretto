type :: parallel_include_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: MPI_COMM_WORLD = 0
  integer :: MPI_COMM_NULL = -1
  integer :: MPI_COMM_SELF = -2
  integer :: MPI_COMM_SELF = -2
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type parallel_include_type
