type :: bz_form_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ind
  integer :: nfaces
  integer :: nvertices
  real(dp), allocatable, dimension(:,:) :: normal
  real(dp), allocatable, dimension(:,:) :: vertex_coord
  integer, allocatable, dimension(:,:) :: ivertex
  integer, allocatable, dimension(:,:) :: indsur
  integer :: xaxis
  integer :: yaxis
  integer :: zaxis
  real(dp), dimension(3) :: xi
  real(dp), dimension(3) :: yi
  real(dp), dimension(3) :: zi
  integer :: nlett
  character(len=3), allocatable, dimension(:) :: letter_list
  real(dp), allocatable, dimension(:,:) :: letter_coord
  character(len=20) :: letter_type
  integer :: npx = 8
  integer :: ibrav
  real(dp), dimension(6) :: celldm
  real(dp) :: omega
  real(dp), dimension(3,3) :: at
  real(dp), dimension(3,3) :: bg
  logical :: switch_a_b = .false.
  logical :: switch_b_c = .false.
  logical :: rotate_a_b_c = .false.
  logical :: rotate_a_b_c = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type bz_form_type
