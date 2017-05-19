init_args = {"MPI_COMM_WORLD": {"type": "integer", "dimension": null}, "MPI_COMM_NULL": {"type": "integer", "dimension": null}, "MPI_COMM_SELF": {"type": "integer", "dimension": null}}
type :: parallel_include_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: MPI_COMM_WORLD = 0
  integer :: MPI_COMM_NULL = -1
  integer :: MPI_COMM_SELF = -2

contains
  procedure, pass :: init => parallel_include_type_init
  procedure, pass :: update => parallel_include_type_update
end type parallel_include_type
