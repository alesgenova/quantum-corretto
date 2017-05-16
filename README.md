# Quantum Corretto Generator

## Overview
The script scans the source code and creates an internal map of all the files/modules/procedures/quantities defined in Quantum Espresso.

The goal is to convert each module into a datatype. The script already does most of the work, but some manual input is needed.

I have already generated a set of blueprints for each module in Quantum Espresso. You can find them in the folders `Modules/datatypes/` and `PW/src/datatypes/`.

A detailed explanation of the files is provided below for the `gvect` module.

## An Example (from `gvect` to the `gvect_type`)
The `gvect` module is defined in `Modules/recvec.f90`.

For the `gvect` module (and every other module), the script creates two files in the `Modules/datatypes/autogenerated/` directory.

The files are named `gvect_definition.f90` and `gvect_procedures.f90`, and contain the definition of the datatype and its procedures respectively.

Any file in the `autogenerated` directory can and will be overwritten at any time. When you modify a file first copy it into the `Modules/human/` folder.

### `gvect_definition.f90`
```fortran
type :: gvect_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: ngm = 0
  integer :: ngm_g = 0
  integer :: ngl = 0
  integer :: ngmx = 0
  real(dp) :: ecutrho = 0.0_dp
  real(dp) :: gcutm = 0.0_dp
  integer, allocatable, dimension(:) :: nl
  integer, allocatable, dimension(:) :: nlm
  integer :: gstart = 2
  real(dp), allocatable, dimension(:) :: gg
  real(dp), dimension(:), pointer :: gl
  integer, allocatable, dimension(:) :: igtongl
  real(dp), allocatable, dimension(:,:) :: g
  integer, allocatable, dimension(:,:) :: mill
  integer, allocatable, dimension(:) :: ig_l2g
  integer, allocatable, dimension(:) :: sortedig_l2g
  integer, allocatable, dimension(:,:) :: mill_g
  complex(dp), allocatable, dimension(:,:) :: eigts1
  complex(dp), allocatable, dimension(:,:) :: eigts2
  complex(dp), allocatable, dimension(:,:) :: eigts3
  complex(dp), allocatable, dimension(:,:) :: eigts3
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type gvect_type
```
Files with a `_definition` suffix such as this, should never be manually modified. If something is to be changed, notify me and I'll change it upstream in the script.

### `gvect_procedures.f90`
Files with a `_procedures` suffix are just blueprint, and are expected to be manually modified. I provide the scheleton to make it faster (esprecially the `alloc` method), but the actual logic has to be written by a human.

To modify a `*_procedures.f90` file, copy it to the `human` directory first (making sure you're not overwriting somebody else's work).
Any modification made directly in the `autogenerated` folder will be overwritten.
Every datatype is automatically given two bound methods, `alloc` and `init` (any suggestion on better names?)
`alloc` is where allocatable arrays defined in the datatype are allocated.
`init` is where the actual quantities are set.
If you want to add other procedures to the datatype, add them below, and also add the name of the procedure to the list in the first line (this is important to automate everything).

```fortran
['alloc', 'init']

subroutine alloc(this, n0)
  implicit none

  class(gvect_type), intent(inout) :: this
  integer, intent(in) :: n0

  integer :: istat

  if (this%is_alloc) return
  if (.not. allocated(nl)) allocate( nl(:), stat=istat )
  if (.not. allocated(nlm)) allocate( nlm(:), stat=istat )
  if (.not. allocated(gg)) allocate( gg(:), stat=istat )
  if (.not. allocated(igtongl)) allocate( igtongl(:), stat=istat )
  if (.not. allocated(g)) allocate( g(:,:), stat=istat )
  if (.not. allocated(mill)) allocate( mill(:,:), stat=istat )
  if (.not. allocated(ig_l2g)) allocate( ig_l2g(:), stat=istat )
  if (.not. allocated(sortedig_l2g)) allocate( sortedig_l2g(:), stat=istat )
  if (.not. allocated(mill_g)) allocate( mill_g(:,:), stat=istat )
  if (.not. allocated(eigts1)) allocate( eigts1(:,:), stat=istat )
  if (.not. allocated(eigts2)) allocate( eigts2(:,:), stat=istat )
  if (.not. allocated(eigts3)) allocate( eigts3(:,:), stat=istat )
  this%is_alloc = .true. return
end subroutine alloc

subroutine init(this)
  implicit none

  class(gvect_type), intent(inout) :: this
  if (this%is_init) return

  this%is_init = .true. return

end subroutine init
```

### `gvect_type.f90`
The actual `f90` that will be passed to the compiler will be an automatic combination of the autogenerated `gvect_definition.f90` and of the human-patched `gvect_procedures.f90`
The structure will be something like this:
```fortran
module gvect
implicit none

type :: gvect_type
  ...
contains
  procedure, pass :: alloc
  ...
end type gvect_type

contains

subroutine alloc(...)
  ...
end subroutine alloc
...
end module gvect
```

## Modules that shouldn't be objectified
By default the script generates a datatype for each and every module in Quantum Espresso.
If for whatever reason, turns out a module shouldn't undergo this transformation, please add its name to the `Modules/datatypes/human/exceptions.txt` or `PW/src/datatypes/human/exceptions.txt` files.

## Errors
Datatypes mimic the structure of the original modules. It is possible that some quantities (or even modules) have eluded my poorly written regular expressions. If you come across such cases, please notify it to me so I can fix the script upstream.