init_args = {"dfftp": {"type": "type(fft_type_descriptor)", "dimension": null}, "dffts": {"type": "type(fft_type_descriptor)", "dimension": null}, "dfftb": {"type": "type(fft_box_descriptor)", "dimension": null}, "dfft3d": {"type": "type(fft_type_descriptor)", "dimension": null}, "dtgs": {"type": "type(task_groups_descriptor)", "dimension": null}, "smap": {"type": "type(sticks_map)", "dimension": null}}
type :: fft_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(fft_type_descriptor) :: dfftp
  type(fft_type_descriptor) :: dffts
  type(fft_box_descriptor) :: dfftb
  type(fft_type_descriptor) :: dfft3d
  type(task_groups_descriptor) :: dtgs
  type(sticks_map) :: smap
  type(sticks_map) :: smap
contains
  procedure, pass :: init => fft_base_type_init
  procedure, pass :: update => fft_base_type_update
end type fft_base_type
