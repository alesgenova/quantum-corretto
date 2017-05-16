type :: g_psi_mod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:,:) :: h_diag
  real(dp), allocatable, dimension(:,:) :: s_diag
  real(dp), allocatable, dimension(:,:) :: s_diag
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type g_psi_mod_type
