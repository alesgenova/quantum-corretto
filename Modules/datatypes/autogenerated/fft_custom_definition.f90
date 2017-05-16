type :: fft_custom_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(fft_type_descriptor) :: dfftt
  real(kind=dp) :: ecutt
  real(kind=dp) :: dual_t
  real(kind=dp) :: gcutmt
  integer :: nr1t
  integer :: nr2t
  integer :: nr3t
  integer :: nrx1t
  integer :: nrx2t
  integer :: nrx3t
  integer :: nrxxt
  integer :: ngmt
  integer :: ngmt_l
  integer :: ngmt_g
  integer, dimension(:), pointer :: nlt
  integer, dimension(:), pointer :: nltm
  real(kind=dp), dimension(:), pointer :: ggt
  real(kind=dp), dimension(:,:), pointer :: gt
  integer, dimension(:), pointer :: ig_l2gt
  integer :: gstart_t
  integer, dimension(:), pointer :: ig1t
  integer, dimension(:), pointer :: ig2t
  integer, dimension(:), pointer :: ig3t
  integer :: nlgt
  integer :: npwt
  integer :: npwxt
  logical :: initialized = .false.
  logical :: initialized = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type fft_custom_type
