type :: set_signal_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: signal_trapped
  integer(kind=c_int) :: SIGINT = 2_c_int
  integer(kind=c_int) :: SIGINT = 2_c_int
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type set_signal_type
