init_args = {"nrec0": {"type": "integer", "dimension": null}, "fact0": {"type": "real(dp)", "dimension": null}, "fact1": {"type": "real(dp)", "dimension": null}, "size0": {"type": "integer", "dimension": null}, "ENTRY": {"type": "type(index_of_list)", "dimension": null}, "is_init_buiol": {"type": "logical", "dimension": null}}
type :: buiol_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nrec0 = 1024
  real(dp) :: fact0 = 1.5_dp
  real(dp) :: fact1 = 1.2_dp
  integer :: size0 = dp
  type(index_of_list), pointer :: ENTRY = > null()
  logical :: is_init_buiol = .false.
  logical :: is_init_buiol = .false.
contains
  procedure, pass :: init => buiol_type_init
  procedure, pass :: update => buiol_type_update
end type buiol_type
