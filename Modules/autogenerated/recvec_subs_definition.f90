type :: recvec_subs_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => recvec_subs_type_init
  procedure, pass :: update => recvec_subs_type_update
end type recvec_subs_type
