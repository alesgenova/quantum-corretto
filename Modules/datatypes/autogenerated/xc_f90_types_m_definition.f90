type :: xc_f90_types_m_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: xc_f90_kind = selected_real_kind(14)
  integer, pointer :: buffer
  integer, pointer :: buffer
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type xc_f90_types_m_type
