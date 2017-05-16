type :: mp_images_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: nimage = 1
  integer :: nproc_image = 1
  integer :: me_image = 0
  integer :: root_image = 0
  integer :: my_image_id = 0
  integer :: inter_image_comm = 0
  integer :: intra_image_comm = 0
  integer :: intra_image_comm = 0
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type mp_images_type
