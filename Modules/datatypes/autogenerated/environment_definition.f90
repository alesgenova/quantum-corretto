type :: environment_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len=75) :: title
  character(len=75) :: title
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type environment_type
