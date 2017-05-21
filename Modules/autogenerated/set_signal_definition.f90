type :: set_signal_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

#if defined(__trap_sigusr1) || defined(__terminate_gracefully) 
init_args = {"signal_trapped": {"type": "logical", "dimension": null}, "SIGINT": {"type": "integer(kind=c_int)", "dimension": null}}
  logical :: signal_trapped
  integer(kind=c_int) :: SIGINT = 2_c_int

#ifdef __trap_sigusr1 
#endif 

#ifdef __terminate_gracefully 
#endif 

#else 
#endif 

contains
  procedure, pass :: init => set_signal_type_init
  procedure, pass :: update => set_signal_type_update
end type set_signal_type
