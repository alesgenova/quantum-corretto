type :: io_global_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: stdin = 5
  integer :: qestdin = 9
  integer :: stdout = 6
  integer :: ionode_id = 0
  logical :: ionode = .true.
  integer :: meta_ionode_id = 0
  logical :: meta_ionode = .true.
  integer :: xmloutputunit = 51
  integer :: xmloutputunit = 51
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type io_global_type
