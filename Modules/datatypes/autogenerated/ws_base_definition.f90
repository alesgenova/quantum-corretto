type :: ws_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), dimension(3,3) :: a
  real(dp), dimension(3,3) :: aa
  real(dp), dimension(3,3) :: b
  real(dp), dimension(3) :: norm_b
  logical :: initialized = .false.
  logical :: initialized = .false.
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type ws_base_type
