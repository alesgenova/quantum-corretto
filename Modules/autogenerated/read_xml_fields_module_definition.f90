init_args = {"exchange": {"type": "character(len = 5)", "dimension": null}, "exchange_grad_corr": {"type": "character(len = 5)", "dimension": null}, "correlation": {"type": "character(len = 5)", "dimension": null}, "correlation_grad_corr": {"type": "character(len = 5)", "dimension": null}, "xc_specials": {"type": "character(len = 5)", "dimension": null}}
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
  procedure, pass :: init
  procedure, pass :: update
end type read_xml_fields_module_type
