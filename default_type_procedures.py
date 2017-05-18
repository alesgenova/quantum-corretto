
def write_alloc(codeblock, file_obj, alloc_args, alloc_dims):
    f = file_obj
    # the init blueprint
    args = ['this']
    args.extend([arg for arg in alloc_args])
    f.write("subroutine {}_alloc({})\n".format(codeblock.name,", ".join(args)))
    f.write("  use memory_manager_module, only: memory_manager\n\n")
    f.write("  implicit none\n\n")
    f.write("  type({}), intent(inout) :: this\n\n".format(codeblock.name))
    for key, var in alloc_args.items():
        string = "  "+var['type']
        if var['dimension'] is not None: string += ", dimension({})".format(var['dimension'])
        string += ", intent(in)"
        string += " :: {}".format(key)
        f.write(string+"\n")
    f.write("\n")
    f.write("  integer :: istat\n\n")
    #f.write("  if (this%is_alloc) return\n")
    for key, var in codeblock.declares.items():
        if var['allocatable']:
            if key in alloc_dims:
                pass
                #f.write("  if (.not. allocated({})) ".format(var['name']))
                f.write("  allocate( this%{}({}), stat=istat )\n".format(var['name'], ", ".join(alloc_dims[key])))
                f.write("  call memory_manager('{}%alloc', '{}', this%{}({}), 1, istat)\n".format(codeblock.name, var['name'], var['name'], var['dimension']))
                #f.write("  if (istat .ne. 0) ")
                #f.write("call errore('{}%alloc', 'error while allocating {}', istat)\n".format(self.name, var['name']))
            else:
                print("WARNING: dimensions for the variable {} have not been provided in the type definition file.".format(key))

    #for key, var in alloc_args.items():
    #    string = "  if (present({})) this%{} = {}".format(key,key,key)
    #    f.write(string+"\n")

    f.write("\n  this%is_alloc = .true.\n")
    #f.write("  this%is_init = .true.\n  return\n")
    f.write("\n  return\n")
    f.write("end subroutine {}_alloc\n\n".format(codeblock.name))

def write_dealloc(codeblock, file_obj):
    f = file_obj
    # the allocate blueprint
    f.write("subroutine {}_dealloc(this)\n".format(codeblock.name))
    f.write("  use memory_manager_module, only: memory_manager\n\n")
    f.write("  implicit none\n\n")
    f.write("  type({}_type), intent(inout) :: this\n".format(codeblock.name))
    f.write("  integer :: istat\n\n")
    #f.write("  if (this%is_alloc) return\n")
    for key, var in codeblock.declares.items():
        if var['allocatable']:
            #f.write("  if (.not. allocated({})) ".format(var['name']))
            f.write("  deallocate( this%{}, stat=istat )\n".format(var['name']))
            f.write("  call memory_manager('{}%dealloc', '{}', this%{}({}), -1, istat)\n".format(codeblock.name, var['name'], var['name'], var['dimension']))
            #f.write("  if (istat .ne. 0) ")
            #f.write("call errore('{}%alloc', 'error while allocating {}', istat)\n".format(self.name, var['name']))
    f.write("\n  this%is_alloc = .false.\n")
    f.write("\n  return\n")
    f.write("end subroutine {}_dealloc\n\n".format(codeblock.name))
    return


def write_init(codeblock, file_obj, init_args):
    f = file_obj
    # the init blueprint
    args = ['this']
    args.extend([arg for arg in init_args])
    f.write("subroutine {}_init({})\n".format(codeblock.name,", ".join(args)))
    f.write("  implicit none\n\n")
    f.write("  type({}), intent(inout) :: this\n\n".format(codeblock.name))
    for key, var in init_args.items():
        string = "  "+var['type']
        if var['dimension'] is not None: string += ", dimension({})".format(var['dimension'])
        string += ", intent(in), optional"
        string += " :: {}".format(key)
        f.write(string+"\n")
    f.write("\n")
    for key, var in init_args.items():
        string = "  if (present({})) this%{} = {}".format(key,key,key)
        f.write(string+"\n")

    #f.write("  if (this%is_init) return\n\n")
    #f.write("  this%is_init = .true.\n  return\n")
    f.write("\n  return\n")
    f.write("end subroutine {}_init\n\n".format(codeblock.name))
