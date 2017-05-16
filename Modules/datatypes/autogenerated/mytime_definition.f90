type :: mytime_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: maxclock = 101
  real(dp) :: notrunning = - 1.0_dp
  real(dp), dimension(maxclock) :: cputime
  real(dp), dimension(maxclock) :: t0cpu
  real(dp), dimension(maxclock) :: walltime
  real(dp), dimension(maxclock) :: t0wall
  character(len=12), dimension(maxclock) :: clock_label
  integer, dimension(maxclock) :: called
  integer :: nclock = 0
  logical :: no
  integer :: trace_depth = 0
  integer :: trace_depth = 0
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type mytime_type
