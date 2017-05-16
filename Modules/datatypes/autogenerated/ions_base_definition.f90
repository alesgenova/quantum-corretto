type :: ions_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nsp = 0
  integer, dimension(ntypx) :: na = 0
  integer :: nax = 0
  integer :: nat = 0
  real(dp), dimension(ntypx) :: zv = 0.0_dp
  real(dp), dimension(ntypx) :: amass = 0.0_dp
  real(dp), dimension(ntypx) :: rcmax = 0.0_dp
  integer, allocatable, dimension(:) :: ityp
  real(dp), allocatable, dimension(:,:) :: tau
  real(dp), allocatable, dimension(:,:) :: vel
  real(dp), allocatable, dimension(:,:) :: tau_srt
  real(dp), allocatable, dimension(:,:) :: vel_srt
  integer, allocatable, dimension(:) :: ind_srt
  integer, allocatable, dimension(:) :: ind_bck
  character(len=3), dimension(ntypx) :: atm
  character(len=3), allocatable, dimension(:) :: label_srt
  character(len=80) :: tau_format
  integer, allocatable, dimension(:,:) :: if_pos
  integer, allocatable, dimension(:,:) :: iforce
  integer :: fixatom = 0
  integer :: ndofp = -1
  integer :: ndfrz = 0
  real(dp) :: fricp
  real(dp) :: greasp
  real(dp), allocatable, dimension(:,:) :: taui
  real(dp), dimension(3) :: cdmi
  real(dp), dimension(3) :: cdm
  real(dp), dimension(3) :: cdms
  real(dp), allocatable, dimension(:,:) :: extfor
  logical :: tions_base_init = .false.
  logical :: tdebug = .false.
  logical :: tdebug = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type ions_base_type
