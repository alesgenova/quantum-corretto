type :: realus_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:) :: boxrad
  integer, allocatable, dimension(:,:) :: box_beta
  integer, allocatable, dimension(:) :: maxbox_beta
  real(dp), allocatable, dimension(:,:,:) :: betasave
  real(dp), allocatable, dimension(:) :: boxrad_beta
  real(dp), allocatable, dimension(:,:) :: boxdist_beta
  real(dp), allocatable, dimension(:,:,:) :: xyz_beta
  real(dp), allocatable, dimension(:,:,:) :: spher_beta
  complex(dp), allocatable, dimension(:,:) :: xkphase
  integer :: current_phase_kpoint = -1
  logical :: real_space
  logical :: do_not_use_spline_inside_rinner = .false.
  integer :: real_space_debug = 0
  integer :: initialisation_level
  complex(dp), allocatable, dimension(:) :: tg_psic
  complex(dp), allocatable, dimension(:) :: psic_temp
  complex(dp), allocatable, dimension(:) :: tg_psic_temp
  complex(dp), allocatable, dimension(:) :: tg_vrs
  complex(dp), allocatable, dimension(:) :: psic_box_temp
  complex(dp), allocatable, dimension(:) :: tg_psic_box_temp
  type(realsp_augmentation), dimension(:), pointer :: tabp = > null()
  type(realsp_augmentation), dimension(:), pointer :: tabxx = > null()
  type(realsp_augmentation), dimension(:), pointer :: tabxx = > null()
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type realus_type
