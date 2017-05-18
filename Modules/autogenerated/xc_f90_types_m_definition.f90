init_args = {"xc_f90_kind": {"type": "integer", "dimension": null}}
type :: xc_f90_types_m_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: xc_f90_kind = selected_real_kind(14)
  integer :: xc_f90_kind = selected_real_kind(14)
contains
  procedure, pass :: init => xc_f90_types_m_type_init
  procedure, pass :: update => xc_f90_types_m_type_update
end type xc_f90_types_m_type
