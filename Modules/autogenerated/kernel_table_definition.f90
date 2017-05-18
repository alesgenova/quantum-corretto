alloc_args = {}
init_args = {"Nqs": {"type": "integer", "dimension": null}, "Nr_points": {"type": "integer", "dimension": null}, "r_max": {"type": "real(dp)", "dimension": null}, "q_cut": {"type": "real(dp)", "dimension": null}, "q_min": {"type": "real(dp)", "dimension": null}, "dk": {"type": "real(dp)", "dimension": null}, "q_mesh": {"type": "real(dp)", "dimension": ":"}, "kernel": {"type": "real(dp)", "dimension": ":,:,:"}, "d2phi_dk2": {"type": "real(dp)", "dimension": ":,:,:"}, "vdw_table_name": {"type": "character(len=256)", "dimension": null}, "kernel_file_name": {"type": "character(len=1000)", "dimension": null}, "double_format": {"type": "character(len=30)", "dimension": null}, "vdw_kernel_md5_cksum": {"type": "character(len=32)", "dimension": null}, "find_free_unit": {"type": "integer", "dimension": null}}
type :: kernel_table_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: Nqs
  integer :: Nr_points
  real(dp) :: r_max
  real(dp) :: q_cut
  real(dp) :: q_min
  real(dp) :: dk
  real(dp), allocatable, dimension(:) :: q_mesh ! dimensions = [":"]
  real(dp), allocatable, dimension(:,:,:) :: kernel ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: d2phi_dk2 ! dimensions = [":", ":", ":"]
  character(len=256) :: vdw_table_name = ' '
  character(len=1000) :: kernel_file_name
  character(len=30) :: double_format = "(1p4e23.14)"
  character(len=32) :: vdw_kernel_md5_cksum = 'not set'
  integer :: find_free_unit
  integer :: find_free_unit
contains
  procedure, pass :: alloc => kernel_table_type_alloc
  procedure, pass :: init => kernel_table_type_init
  procedure, pass :: update => kernel_table_type_update
  procedure, pass :: dealloc => kernel_table_type_dealloc
end type kernel_table_type
