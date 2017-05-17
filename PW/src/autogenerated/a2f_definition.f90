type :: a2f_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: la2F = .false.
  logical :: la2F = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type a2f_type
