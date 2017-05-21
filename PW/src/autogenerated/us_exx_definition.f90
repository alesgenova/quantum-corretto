alloc_args = {}
init_args = {"dovanxx": {"type": "logical", "dimension": null}, "becxx": {"type": "type(bec_type)", "dimension": ":"}, "becxx_gamma": {"type": "complex(dp)", "dimension": ":,:"}, "eps_occ": {"type": "real(dp)", "dimension": null}}
type :: us_exx_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: dovanxx = .true.
  type(bec_type), allocatable, dimension(:) :: becxx ! dimensions = [":"]
  complex(dp), allocatable, dimension(:,:) :: becxx_gamma ! dimensions = [":", ":"]
  real(dp) :: eps_occ = 1.d-8

contains
  procedure, pass :: alloc => us_exx_type_alloc
  procedure, pass :: init => us_exx_type_init
  procedure, pass :: update => us_exx_type_update
  procedure, pass :: dealloc => us_exx_type_dealloc
end type us_exx_type
