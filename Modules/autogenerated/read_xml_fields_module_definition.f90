type :: read_xml_fields_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  character(len = 5) :: exchange
  character(len = 5) :: exchange_grad_corr
  character(len = 5) :: correlation
  character(len = 5) :: correlation_grad_corr
  character(len = 5) :: xc_specials
  character(len = 5) :: xc_specials
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type read_xml_fields_module_type
