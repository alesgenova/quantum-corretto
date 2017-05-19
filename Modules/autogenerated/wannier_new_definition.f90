alloc_args = {}
init_args = {"ningx": {"type": "integer", "dimension": null}, "use_wannier": {"type": "logical", "dimension": null}, "rkmesh": {"type": "logical", "dimension": null}, "plot_wannier": {"type": "logical", "dimension": null}, "use_energy_int": {"type": "logical", "dimension": null}, "print_wannier_coeff": {"type": "logical", "dimension": null}, "nwan": {"type": "integer", "dimension": null}, "plot_wan_num": {"type": "integer", "dimension": null}, "plot_wan_spin": {"type": "integer", "dimension": null}, "wan_pot": {"type": "real(kind=dp)", "dimension": ":,:"}, "wannier_energy": {"type": "real(kind=dp)", "dimension": ":,:"}, "wannier_occ": {"type": "real(kind=dp)", "dimension": ":,:,:"}, "pp": {"type": "complex(kind=dp)", "dimension": ":,:"}, "coef": {"type": "complex(kind=dp)", "dimension": ":,:,:"}, "wan_in": {"type": "type(wannier_data)", "dimension": ":,:"}}
type :: wannier_new_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ningx = 10
  logical :: use_wannier
  logical :: rkmesh
  logical :: plot_wannier
  logical :: use_energy_int
  logical :: print_wannier_coeff
  integer :: nwan
  integer :: plot_wan_num
  integer :: plot_wan_spin
  real(kind=dp), allocatable, dimension(:,:) :: wan_pot ! dimensions = [":", ":"]
  real(kind=dp), allocatable, dimension(:,:) :: wannier_energy ! dimensions = [":", ":"]
  real(kind=dp), allocatable, dimension(:,:,:) :: wannier_occ ! dimensions = [":", ":", ":"]
  complex(kind=dp), allocatable, dimension(:,:) :: pp ! dimensions = [":", ":"]
  complex(kind=dp), allocatable, dimension(:,:,:) :: coef ! dimensions = [":", ":", ":"]
  type(wannier_data), allocatable, dimension(:,:) :: wan_in ! dimensions = [":", ":"]

contains
  procedure, pass :: alloc => wannier_new_type_alloc
  procedure, pass :: init => wannier_new_type_init
  procedure, pass :: update => wannier_new_type_update
  procedure, pass :: dealloc => wannier_new_type_dealloc
end type wannier_new_type
