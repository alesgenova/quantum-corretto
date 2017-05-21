init_args = {"dfftp": {"type": "type(fft_dlay_descriptor)", "dimension": null}, "dffts": {"type": "type(fft_dlay_descriptor)", "dimension": null}, "dfftb": {"type": "type(fft_dlay_descriptor)", "dimension": null}}
type :: fft_base_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(fft_dlay_descriptor) :: dfftp
  type(fft_dlay_descriptor) :: dffts
  type(fft_dlay_descriptor) :: dfftb

contains
  procedure, pass :: init => fft_base_type_init
  procedure, pass :: update => fft_base_type_update
end type fft_base_type
