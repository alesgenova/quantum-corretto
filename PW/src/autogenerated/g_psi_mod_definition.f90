alloc_args = {}
init_args = {"h_diag": {"type": "real(dp)", "dimension": ":,:"}, "s_diag": {"type": "real(dp)", "dimension": ":,:"}}
type :: g_psi_mod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:,:) :: h_diag ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: s_diag ! dimensions = [":", ":"]
  real(dp), allocatable, dimension(:,:) :: s_diag ! dimensions = [":", ":"]
contains
  procedure, pass :: alloc => g_psi_mod_type_alloc
  procedure, pass :: init => g_psi_mod_type_init
  procedure, pass :: update => g_psi_mod_type_update
  procedure, pass :: dealloc => g_psi_mod_type_dealloc
end type g_psi_mod_type
