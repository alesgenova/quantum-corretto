type :: fft_custom_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.

contains
  procedure, pass :: init => fft_custom_type_init
  procedure, pass :: update => fft_custom_type_update
end type fft_custom_type
