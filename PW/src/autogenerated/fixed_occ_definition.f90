type :: fixed_occ_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:,:) :: f_inp
  logical :: tfixed_occ
  logical :: one_atom_occupations
  logical :: one_atom_occupations
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type fixed_occ_type
