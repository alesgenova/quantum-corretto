type :: parallel_include_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

#if defined __mpi 

#else 
init_args = {"MPI_COMM_WORLD": {"type": "integer", "dimension": null}, "MPI_COMM_NULL": {"type": "integer", "dimension": null}, "MPI_COMM_SELF": {"type": "integer", "dimension": null}}
  integer :: MPI_COMM_WORLD = 0
  integer :: MPI_COMM_NULL = -1
  integer :: MPI_COMM_SELF = -2
#endif 

contains
  procedure, pass :: init => parallel_include_type_init
  procedure, pass :: update => parallel_include_type_update
end type parallel_include_type
