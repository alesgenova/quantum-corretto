init_args = {"pippo": {"type": "integer", "dimension": null}}
type :: hdf5_qe_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: pippo
  integer :: pippo
contains
  procedure, pass :: init => hdf5_qe_type_init
  procedure, pass :: update => hdf5_qe_type_update
end type hdf5_qe_type
