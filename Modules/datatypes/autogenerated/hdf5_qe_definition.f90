type :: hdf5_qe_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: pippo
  integer :: pippo
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type hdf5_qe_type
