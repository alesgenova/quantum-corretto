alloc_args = {}
init_args = {"eps1": {"type": "real(dp)", "dimension": null}, "eps2": {"type": "real(dp)", "dimension": null}, "s": {"type": "integer", "dimension": "3,3,48"}, "invs": {"type": "integer", "dimension": "48"}, "ftau": {"type": "integer", "dimension": "3,48"}, "fft_fact": {"type": "integer", "dimension": "3"}, "nrot": {"type": "integer", "dimension": null}, "spacegroup": {"type": "integer", "dimension": null}, "nsym": {"type": "integer", "dimension": null}, "nsym_ns": {"type": "integer", "dimension": null}, "nsym_na": {"type": "integer", "dimension": null}, "ft": {"type": "real(dp)", "dimension": "3,48"}, "sr": {"type": "real(dp)", "dimension": "3,3,48"}, "accep": {"type": "real(dp)", "dimension": null}, "sname": {"type": "character(len=45)", "dimension": "48"}, "t_rev": {"type": "integer", "dimension": "48"}, "irt": {"type": "integer", "dimension": ":,:"}, "time_reversal": {"type": "logical", "dimension": null}, "invsym": {"type": "logical", "dimension": null}, "nofrac": {"type": "logical", "dimension": null}, "allfrac": {"type": "logical", "dimension": null}, "nosym": {"type": "logical", "dimension": null}, "nosym_evc": {"type": "logical", "dimension": null}, "no_t_rev": {"type": "logical", "dimension": null}, "d1": {"type": "real(dp)", "dimension": "3,3,48"}, "d2": {"type": "real(dp)", "dimension": "5,5,48"}, "d3": {"type": "real(dp)", "dimension": "7,7,48"}}
type :: symm_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  real(dp) :: eps1 = 1.0d-6
  real(dp) :: eps2 = 1.0d-5
  integer, dimension(3,3,48) :: s
  integer, dimension(48) :: invs
  integer, dimension(3,48) :: ftau
  integer, dimension(3) :: fft_fact
  integer :: nrot
  integer :: spacegroup = 0
  integer :: nsym = 1
  integer :: nsym_ns = 0
  integer :: nsym_na = 0
  real(dp), dimension(3,48) :: ft
  real(dp), dimension(3,3,48) :: sr
  real(dp) :: accep = 1.0d-5
  character(len=45), dimension(48) :: sname
  integer, dimension(48) :: t_rev = 0
  integer, allocatable, dimension(:,:) :: irt ! dimensions = [:,:]
  logical :: time_reversal = .true.
  logical :: invsym
  logical :: nofrac = .false.
  logical :: allfrac = .false.
  logical :: nosym = .false.
  logical :: nosym_evc = .false.
  logical :: no_t_rev = .false.
  real(dp), dimension(3,3,48) :: d1
  real(dp), dimension(5,5,48) :: d2
  real(dp), dimension(7,7,48) :: d3
  real(dp), dimension(7,7,48) :: d3
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type symm_base_type
