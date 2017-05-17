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
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type fft_base_type
