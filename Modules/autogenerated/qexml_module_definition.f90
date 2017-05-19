init_args = {"fmt_name": {"type": "character(5)", "dimension": null}, "fmt_version": {"type": "character(5)", "dimension": null}, "datadir_in": {"type": "character(256)", "dimension": null}, "datadir_out": {"type": "character(256)", "dimension": null}, "iunit": {"type": "integer", "dimension": null}, "ounit": {"type": "integer", "dimension": null}, "qexml_current_version": {"type": "character(10)", "dimension": null}, "qexml_default_version": {"type": "character(10)", "dimension": null}, "qexml_current_version_init": {"type": "logical", "dimension": null}, "qexml_version_before_1_4_0": {"type": "logical", "dimension": null}, "attr": {"type": "character(iotk_attlenx)", "dimension": null}}
type :: qexml_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(5) :: fmt_name = "qexml"
  character(5) :: fmt_version = "1.4.0"
  character(256) :: datadir_in
  character(256) :: datadir_out
  integer :: iunit
  integer :: ounit
  character(10) :: qexml_current_version = " "
  character(10) :: qexml_default_version = trim( fmt_version  )
  logical :: qexml_current_version_init = .false.
  logical :: qexml_version_before_1_4_0 = .false.
  character(iotk_attlenx) :: attr

contains
  procedure, pass :: init => qexml_module_type_init
  procedure, pass :: update => qexml_module_type_update
end type qexml_module_type
