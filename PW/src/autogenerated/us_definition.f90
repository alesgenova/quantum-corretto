alloc_args = {}
init_args = {"nqxq": {"type": "integer", "dimension": null}, "nqx": {"type": "integer", "dimension": null}, "dq": {"type": "real(dp)", "dimension": null}, "qrad": {"type": "real(dp)", "dimension": ":,:,:,:"}, "tab": {"type": "real(dp)", "dimension": ":,:,:"}, "tab_at": {"type": "real(dp)", "dimension": ":,:,:"}, "spline_ps": {"type": "logical", "dimension": null}, "tab_d2y": {"type": "real(dp)", "dimension": ":,:,:"}}
type :: us_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nqxq
  integer :: nqx
  real(dp) :: dq = 0.01d0
  real(dp), allocatable, dimension(:,:,:,:) :: qrad ! dimensions = [":", ":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: tab ! dimensions = [":", ":", ":"]
  real(dp), allocatable, dimension(:,:,:) :: tab_at ! dimensions = [":", ":", ":"]
  logical :: spline_ps = .false.
  real(dp), allocatable, dimension(:,:,:) :: tab_d2y ! dimensions = [":", ":", ":"]

contains
  procedure, pass :: alloc => us_type_alloc
  procedure, pass :: init => us_type_init
  procedure, pass :: update => us_type_update
  procedure, pass :: dealloc => us_type_dealloc
end type us_type
