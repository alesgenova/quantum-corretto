alloc_args = {}
init_args = {"evc": {"type": "complex(dp)", "dimension": ":,:"}, "psic": {"type": "complex(dp)", "dimension": ":"}, "psic_nc": {"type": "complex(dp)", "dimension": ":,:"}, "c0_bgrp": {"type": "complex(dp)", "dimension": ":,:"}, "cm_bgrp": {"type": "complex(dp)", "dimension": ":,:"}, "phi_bgrp": {"type": "complex(dp)", "dimension": ":,:"}, "cv0": {"type": "complex(dp)", "dimension": ":,:"}}
type :: wavefunctions_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  complex(dp), allocatable, dimension(:,:) :: evc ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:) :: psic ! dimensions = [:]
  complex(dp), allocatable, dimension(:,:) :: psic_nc ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:,:) :: c0_bgrp ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:,:) :: cm_bgrp ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:,:) :: phi_bgrp ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:,:) :: cv0 ! dimensions = [:,:]
  complex(dp), allocatable, dimension(:,:) :: cv0 ! dimensions = [:,:]
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: update
  procedure, pass :: dealloc
end type wavefunctions_module_type
