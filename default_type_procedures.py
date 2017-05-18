def write_alloc(original_module, file_obj):
    f = file_obj
    # the allocate blueprint
    f.write("subroutine alloc(this, n0)\n")
    f.write("  use memory_manager_module, only: memory_manager\n\n")
    f.write("  implicit none\n\n")
    f.write("  class({}_type), intent(inout) :: this\n".format(original_module.name))
    f.write("  integer, intent(in) :: n0\n\n")
    f.write("  integer :: istat\n\n")
    #f.write("  if (this%is_alloc) return\n")
    for key, var in original_module.declares.items():
        if var['allocatable']:
            #f.write("  if (.not. allocated({})) ".format(var['name']))
            f.write("  allocate( {}({}), stat=istat )\n".format(var['name'], var['dimension']))
            f.write("  call memory_manager('{}%alloc', '{}', {}({}), 1, istat)\n".format(original_module.name, var['name'], var['name'], var['dimension']))
            #f.write("  if (istat .ne. 0) ")
            #f.write("call errore('{}%alloc', 'error while allocating {}', istat)\n".format(self.name, var['name']))
    f.write("  this%is_alloc = .true.\n  return\n")
    f.write("end subroutine alloc\n\n")
    return

def write_dealloc(original_module, file_obj):
    f = file_obj
    # the allocate blueprint
    f.write("subroutine dealloc(this)\n")
    f.write("  use memory_manager_module, only: memory_manager\n\n")
    f.write("  implicit none\n\n")
    f.write("  class({}_type), intent(inout) :: this\n".format(original_module.name))
    f.write("  integer :: istat\n\n")
    #f.write("  if (this%is_alloc) return\n")
    for key, var in original_module.declares.items():
        if var['allocatable']:
            #f.write("  if (.not. allocated({})) ".format(var['name']))
            f.write("  deallocate( {}, stat=istat )\n".format(var['name']))
            f.write("  call memory_manager('{}%dealloc', '{}', {}({}), -1, istat)\n".format(original_module.name, var['name'], var['name'], var['dimension']))
            #f.write("  if (istat .ne. 0) ")
            #f.write("call errore('{}%alloc', 'error while allocating {}', istat)\n".format(self.name, var['name']))
    f.write("  this%is_alloc = .false.\n  return\n")
    f.write("end subroutine dealloc\n\n")
    return


def write_init(original_module, file_obj):
    f = file_obj
    # the init blueprint
    f.write("subroutine init(this)\n")
    f.write("  implicit none\n\n")
    f.write("  class({}_type), intent(inout) :: this\n\n".format(original_module.name))
    #f.write("  if (this%is_init) return\n\n")
    f.write("  this%is_init = .true.\n  return\n")
    f.write("\nend subroutine init\n\n")
