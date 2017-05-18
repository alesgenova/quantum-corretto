init_args = {"DP": {"type": "integer", "dimension": null}, "sgl": {"type": "integer", "dimension": null}, "i4b": {"type": "integer", "dimension": null}}
type :: kinds_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: DP = selected_real_kind(14,200)
  integer :: sgl = selected_real_kind(6,30)
  integer :: i4b = selected_int_kind(9)
  integer :: i4b = selected_int_kind(9)
contains
  procedure, pass :: init
  procedure, pass :: update
end type kinds_type
