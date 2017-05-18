init_args = {"stdin": {"type": "integer", "dimension": null}, "qestdin": {"type": "integer", "dimension": null}, "stdout": {"type": "integer", "dimension": null}, "ionode_id": {"type": "integer", "dimension": null}, "ionode": {"type": "logical", "dimension": null}, "meta_ionode_id": {"type": "integer", "dimension": null}, "meta_ionode": {"type": "logical", "dimension": null}, "xmloutputunit": {"type": "integer", "dimension": null}}
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
  procedure, pass :: init => io_global_type_init
  procedure, pass :: update => io_global_type_update
end type io_global_type
