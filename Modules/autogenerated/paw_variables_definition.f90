alloc_args = {}
init_args = {"paw_is_init": {"type": "logical", "dimension": null}, "okpaw": {"type": "logical", "dimension": null}, "total_core_energy": {"type": "real(dp)", "dimension": null}, "only_paw": {"type": "logical", "dimension": null}, "lm_fact": {"type": "integer", "dimension": null}, "lm_fact_x": {"type": "integer", "dimension": null}, "xlm": {"type": "integer", "dimension": null}, "radial_grad_style": {"type": "integer", "dimension": null}, "rad": {"type": "type(paw_radial_integrator)", "dimension": ":"}, "ddd_paw": {"type": "real(dp)", "dimension": ":,:,:"}, "vs_rad": {"type": "real(dp)", "dimension": ":,:,:"}}
type :: paw_variables_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  logical :: paw_is_init = .false.
  logical :: okpaw = .false.
  real(dp) :: total_core_energy = 0._dp
  logical :: only_paw
  integer :: lm_fact = 3
  integer :: lm_fact_x = 3
  integer :: xlm = 2
  integer :: radial_grad_style = 0
  type(paw_radial_integrator), allocatable, dimension(:) :: rad ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:,:) :: ddd_paw ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: vs_rad ! dimensions = [":", ":", ":"]

contains
  procedure, pass :: alloc => paw_variables_type_alloc
  procedure, pass :: init => paw_variables_type_init
  procedure, pass :: update => paw_variables_type_update
  procedure, pass :: dealloc => paw_variables_type_dealloc
end type paw_variables_type
