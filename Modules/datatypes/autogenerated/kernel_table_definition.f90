type :: kernel_table_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: Nqs
  integer :: Nr_points
  real(dp) :: r_max
  real(dp) :: q_cut
  real(dp) :: q_min
  real(dp) :: dk
  real(dp), allocatable, dimension(:) :: q_mesh
  real(dp), allocatable, dimension(:,:,:) :: kernel
  real(dp), allocatable, dimension(:,:,:) :: d2phi_dk2
  character(len=256) :: vdw_table_name = ' '
  character(len=1000) :: kernel_file_name
  character(len=30) :: double_format = "(1p4e23.14)"
  character(len=32) :: vdw_kernel_md5_cksum = 'not set'
  integer :: find_free_unit
  integer :: find_free_unit
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type kernel_table_type
