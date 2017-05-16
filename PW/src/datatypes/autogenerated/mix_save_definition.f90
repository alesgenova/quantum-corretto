type :: mix_save_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(mix_type), allocatable, dimension(:) :: df
  type(mix_type), allocatable, dimension(:) :: dv
  type(mix_type), allocatable, dimension(:) :: dv
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type mix_save_type
