init_args = {"nimage": {"type": "integer", "dimension": null}, "nproc_image": {"type": "integer", "dimension": null}, "me_image": {"type": "integer", "dimension": null}, "root_image": {"type": "integer", "dimension": null}, "my_image_id": {"type": "integer", "dimension": null}, "inter_image_comm": {"type": "integer", "dimension": null}, "intra_image_comm": {"type": "integer", "dimension": null}}
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

contains
  procedure, pass :: init => mp_images_type_init
  procedure, pass :: update => mp_images_type_update
end type mp_images_type
