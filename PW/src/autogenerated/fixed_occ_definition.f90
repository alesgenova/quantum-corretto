alloc_args = {}
init_args = {"f_inp": {"type": "real(dp)", "dimension": ":,:"}, "tfixed_occ": {"type": "logical", "dimension": null}, "one_atom_occupations": {"type": "logical", "dimension": null}}
type :: fixed_occ_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp), allocatable, dimension(:,:) :: f_inp ! dimensions = [:,:]
  logical :: tfixed_occ
  logical :: one_atom_occupations
  logical :: one_atom_occupations
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type fixed_occ_type
