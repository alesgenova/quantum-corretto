module Memory_Manager_Module

! module to handle memory as it is allocated


interface MemoryManager  
  module procedure checkmem_integer_1
  module procedure checkmem_integer_2
  module procedure checkmem_integer_3
  module procedure checkmem_integer_4
  module procedure checkmem_integer_5
  module procedure checkmem_real_1
  module procedure checkmem_real_2
  module procedure checkmem_real_3
  module procedure checkmem_real_4
  module procedure checkmem_real_5
  module procedure checkmem_cmplx_1
  module procedure checkmem_cmplx_2
  module procedure checkmem_cmplx_3
  module procedure checkmem_cmplx_4
  module procedure checkmem_cmplx_5
  module procedure checkmem_string_1
  module procedure checkmem_string_2
  module procedure checkmem_string_3
  module procedure checkmem_bool_1
  module procedure checkmem_bool_2
end interface

public  :: MemoryManager
private :: StoreMem

contains

subroutine checkmem_integer_1( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Integer,   intent(in) ::  Array (:)
 Integer,   intent(in) ::  istat, AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_integer_1


subroutine checkmem_integer_2( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Integer,   intent(in) ::  Array (:,:)
 Integer,   intent(in) ::  istat, AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_integer_2


subroutine checkmem_integer_3( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Integer,   intent(in) ::  Array (:,:,:)
 Integer,   intent(in) ::  istat, AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_integer_3


subroutine checkmem_integer_4( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Integer,   intent(in) ::  Array (:,:,:,:)
 Integer,   intent(in) ::  istat, AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_integer_4


subroutine checkmem_integer_5( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Integer,   intent(in) ::  Array (:,:,:,:,:)
 Integer,   intent(in) ::  istat, AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_integer_5


subroutine checkmem_real_1( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Real(8),   intent(in) ::  Array (:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_real_1


subroutine checkmem_real_2( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Real(8),   intent(in) ::  Array (:,:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_real_2


subroutine checkmem_real_3( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Real(8),   intent(in) ::  Array (:,:,:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_real_3


subroutine checkmem_real_4( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Real(8),   intent(in) ::  Array (:,:,:,:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_real_4


subroutine checkmem_real_5( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Real(8),   intent(in) ::  Array (:,:,:,:,:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_real_5


subroutine checkmem_cmplx_1( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 COMPLEX(8),   intent(in) ::  Array (:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), 2*AllocType) 
end subroutine checkmem_cmplx_1


subroutine checkmem_cmplx_2( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 COMPLEX(8),   intent(in) ::  Array (:,:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), 2*AllocType) 
end subroutine checkmem_cmplx_2


subroutine checkmem_cmplx_3( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 COMPLEX(8),   intent(in) ::  Array (:,:,:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), 2*AllocType) 
end subroutine checkmem_cmplx_3


subroutine checkmem_cmplx_4( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 COMPLEX(8),   intent(in) ::  Array (:,:,:,:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), 2*AllocType) 
end subroutine checkmem_cmplx_4


subroutine checkmem_cmplx_5( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 COMPLEX(8),   intent(in) ::  Array (:,:,:,:,:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), 2*AllocType) 
end subroutine checkmem_cmplx_5


subroutine checkmem_string_1( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Character, intent(in) ::  Array (:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_string_1


subroutine checkmem_string_2( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Character, intent(in) ::  Array (:,:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_string_2


subroutine checkmem_string_3( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Character, intent(in) ::  Array (:,:,:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_string_3


subroutine checkmem_bool_1( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Logical,   intent(in) ::  Array (:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_bool_1


subroutine checkmem_bool_2( RoutineName, ArrayName, Array, AllocType, istat )
 Character, intent(in) ::  RoutineName
 Character, intent(in) ::  ArrayName
 Logical,   intent(in) ::  Array (:,:)
 Integer,   intent(in) ::  istat
 Integer,   intent(in) ::  AllocType
!
!
 if (istat .ne. 0 ) call errore (RoutineName,ArrayName,istat)
 call StoreMem (Arrayname,size(Array), AllocType) 
end subroutine checkmem_bool_2


subroutine StoreMem (Name,n,AllocType)
! This is just a place-holder routine
! This is just a place-holder routine
! This is just a place-holder routine
! This is just a place-holder routine
 Character, intent(in) :: Name
 Integer,   intent(in) :: n
 Integer,   intent(in) :: AllocType

 Integer  :: MemToAdd

  MemToAdd = n*AllocType

 return

end subroutine StoreMem

end module Memory_Manager_Module
