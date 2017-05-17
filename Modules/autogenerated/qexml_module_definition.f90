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
  character(iotk_attlenx) :: attr
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type qexml_module_type
