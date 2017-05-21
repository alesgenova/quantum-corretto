alloc_args = {}
init_args = {"force": {"type": "real(dp)", "dimension": ":,:"}, "sigma": {"type": "real(dp)", "dimension": "3,3"}, "lforce": {"type": "logical", "dimension": null}, "lstres": {"type": "logical", "dimension": null}}
type :: force_mod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:,:) :: force ! dimensions = [":", ":"]
  real(dp), dimension(3,3) :: sigma
  logical :: lforce
  logical :: lstres

contains
  procedure, pass :: alloc => force_mod_type_alloc
  procedure, pass :: init => force_mod_type_init
  procedure, pass :: update => force_mod_type_update
  procedure, pass :: dealloc => force_mod_type_dealloc
end type force_mod_type
