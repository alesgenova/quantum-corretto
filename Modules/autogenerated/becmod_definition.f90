alloc_args = {}
init_args = {"becp": {"type": "type(bec_type)", "dimension": null}, "becp_r": {"type": "real(dp)", "dimension": ":,:"}, "becp_k": {"type": "complex(dp)", "dimension": ":,:"}, "becp_nc": {"type": "complex(dp)", "dimension": ":,:,:"}}
type :: becmod_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  type(bec_type) :: becp
  real(dp), allocatable, dimension(:,:) :: becp_r ! dimensions = [":", ":"]
  complex(dp), allocatable, dimension(:,:) :: becp_k ! dimensions = [":", ":"]
  complex(dp), allocatable, dimension(:,:,:) :: becp_nc ! dimensions = [":", ":", ":"]

#ifdef __std_f95 

#else 
#endif 

contains
  procedure, pass :: alloc => becmod_type_alloc
  procedure, pass :: init => becmod_type_init
  procedure, pass :: update => becmod_type_update
  procedure, pass :: dealloc => becmod_type_dealloc
end type becmod_type
