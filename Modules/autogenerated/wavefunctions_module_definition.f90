type :: wavefunctions_module_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  complex(dp), allocatable, dimension(:,:) :: evc
  complex(dp), allocatable, dimension(:) :: psic
  complex(dp), allocatable, dimension(:,:) :: psic_nc
  complex(dp), allocatable, dimension(:,:) :: c0_bgrp
  complex(dp), allocatable, dimension(:,:) :: cm_bgrp
  complex(dp), allocatable, dimension(:,:) :: phi_bgrp
  complex(dp), allocatable, dimension(:,:) :: cv0
  complex(dp), allocatable, dimension(:,:) :: cv0
contains
  procedure, pass :: alloc
  procedure, pass :: init
  procedure, pass :: dealloc
end type wavefunctions_module_type
