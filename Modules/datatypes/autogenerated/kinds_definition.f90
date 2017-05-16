type :: kinds_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: DP = selected_real_kind(14
  integer :: sgl = selected_real_kind(6
  integer :: i4b = selected_int_kind(9)
  integer :: i4b = selected_int_kind(9)
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type kinds_type
