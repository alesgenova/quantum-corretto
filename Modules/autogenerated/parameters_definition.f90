init_args = {"ntypx": {"type": "integer", "dimension": null}, "npsx": {"type": "integer", "dimension": null}, "nsx": {"type": "integer", "dimension": null}, "npk": {"type": "integer", "dimension": null}, "lmaxx": {"type": "integer", "dimension": null}, "lqmax": {"type": "integer", "dimension": null}}
type :: parameters_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ntypx = 10
  integer :: npsx = ntypx
  integer :: nsx = ntypx
  integer :: npk = 40000
  integer :: lmaxx = 3
  integer :: lqmax = 2*lmaxx+1
  integer :: lqmax = 2*lmaxx+1
contains
  procedure, pass :: init => parameters_type_init
  procedure, pass :: update => parameters_type_update
end type parameters_type
