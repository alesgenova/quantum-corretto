alloc_args = {}
init_args = {"boxrad": {"type": "real(dp)", "dimension": ":"}, "box_beta": {"type": "integer", "dimension": ":,:"}, "maxbox_beta": {"type": "integer", "dimension": ":"}, "betasave": {"type": "real(dp)", "dimension": ":,:,:"}, "boxrad_beta": {"type": "real(dp)", "dimension": ":"}, "boxdist_beta": {"type": "real(dp)", "dimension": ":,:"}, "xyz_beta": {"type": "real(dp)", "dimension": ":,:,:"}, "spher_beta": {"type": "real(dp)", "dimension": ":,:,:"}, "real_space": {"type": "logical", "dimension": null}, "real_space_debug": {"type": "integer", "dimension": null}, "initialisation_level": {"type": "integer", "dimension": null}, "igk_k": {"type": "integer", "dimension": ":,:"}, "npw_k": {"type": "integer", "dimension": ":"}, "tg_psic": {"type": "complex(dp)", "dimension": ":"}, "psic_temp": {"type": "complex(dp)", "dimension": ":"}, "tg_psic_temp": {"type": "complex(dp)", "dimension": ":"}, "tg_vrs": {"type": "complex(dp)", "dimension": ":"}, "psic_box_temp": {"type": "complex(dp)", "dimension": ":"}, "tg_psic_box_temp": {"type": "complex(dp)", "dimension": ":"}, "tabp": {"type": "type(realsp_augmentation)", "dimension": ":"}, "tabs": {"type": "type(realsp_augmentation)", "dimension": ":"}}
type :: realus_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:) :: boxrad ! dimensions = [":"]
  integer, allocatable, dimension(:,:) :: box_beta ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: maxbox_beta ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:,:) :: betasave ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:) :: boxrad_beta ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: boxdist_beta ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: xyz_beta ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: spher_beta ! dimensions = [":", ":", ":"]
  logical :: real_space
  integer :: real_space_debug = 0
  integer :: initialisation_level
  integer, allocatable, dimension(:,:) :: igk_k ! dimensions = [":", ":"]
  integer, allocatable, dimension(:) :: npw_k ! dimensions = [":"]
  complex(dp), allocatable, dimension(:) :: tg_psic ! dimensions = [":"]
  complex(dp), allocatable, dimension(:) :: psic_temp ! dimensions = [":"]
  complex(dp), allocatable, dimension(:) :: tg_psic_temp ! dimensions = [":"]
  complex(dp), allocatable, dimension(:) :: tg_vrs ! dimensions = [":"]
  complex(dp), allocatable, dimension(:) :: psic_box_temp ! dimensions = [":"]
  complex(dp), allocatable, dimension(:) :: tg_psic_box_temp ! dimensions = [":"]
  type(realsp_augmentation), dimension(:), pointer :: tabp = > null()
  type(realsp_augmentation), dimension(:), pointer :: tabs = > null()

contains
  procedure, pass :: alloc => realus_type_alloc
  procedure, pass :: init => realus_type_init
  procedure, pass :: update => realus_type_update
  procedure, pass :: dealloc => realus_type_dealloc
end type realus_type
