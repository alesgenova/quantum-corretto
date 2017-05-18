init_args = {}
type :: recvec_subs_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init
  procedure, pass :: update
end type recvec_subs_type
