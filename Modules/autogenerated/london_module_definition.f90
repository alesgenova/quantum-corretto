alloc_args = {}
init_args = {"C6_i": {"type": "real(dp)", "dimension": ":"}, "R_vdw": {"type": "real(dp)", "dimension": ":"}, "C6_ij": {"type": "real(dp)", "dimension": ":,:"}, "R_sum": {"type": "real(dp)", "dimension": ":,:"}, "r": {"type": "real(dp)", "dimension": ":,:"}, "dist2": {"type": "real(dp)", "dimension": ":"}, "scal6": {"type": "real(dp)", "dimension": null}, "lon_rcut": {"type": "real(dp)", "dimension": null}, "mxr": {"type": "integer", "dimension": null}, "r_cut": {"type": "real(dp)", "dimension": null}, "beta": {"type": "real(dp)", "dimension": null}}
type :: london_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:) :: C6_i ! dimensions = [":"]
  real(dp), allocatable, dimension(:) :: R_vdw ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:) :: C6_ij ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: R_sum ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: r ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:) :: dist2 ! dimensions = [":"]
  real(dp) :: scal6
  real(dp) :: lon_rcut
  integer :: mxr
  real(dp) :: r_cut
  real(dp) :: beta = 20.0_dp

contains
  procedure, pass :: alloc => london_module_type_alloc
  procedure, pass :: init => london_module_type_init
  procedure, pass :: update => london_module_type_update
  procedure, pass :: dealloc => london_module_type_dealloc
end type london_module_type
