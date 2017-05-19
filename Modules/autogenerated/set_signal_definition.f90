init_args = {"signal_trapped": {"type": "logical", "dimension": null}, "SIGINT": {"type": "integer(kind=c_int)", "dimension": null}}
type :: set_signal_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: signal_trapped
  integer(kind=c_int) :: SIGINT = 2_c_int

contains
  procedure, pass :: init => set_signal_type_init
  procedure, pass :: update => set_signal_type_update
end type set_signal_type
