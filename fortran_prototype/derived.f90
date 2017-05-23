module types
  implicit none

  type :: custom0
    integer, dimension(2) :: a = [1,2]
    integer, dimension(2) :: b = [3,4]
  endtype custom0

  type :: custom1
    integer, dimension(4) :: c = [1,2,3,4]
    integer, dimension(4) :: d = [5,6,7,8]
    integer, allocatable, dimension(:) :: e
    !integer, dimension(:), pointer :: f => null()
  contains
    procedure, pass :: allocate => allocate_custom1
    procedure, pass :: initialize => initialize_custom1
  endtype custom1

contains

  subroutine allocate_custom1(this, n)
    implicit none

    class(custom1), intent(inout) :: this
    integer, intent(in) :: n

    write(*,*) allocated(this%e)
    if (.not. allocated(this%e)) then
      allocate(this%e(n))
    endif
    write(*,*) allocated(this%e)

  end subroutine allocate_custom1

  subroutine initialize_custom1(this, array)
    implicit none

    class(custom1), intent(inout) :: this
    integer, intent(in), dimension(:) :: array

    this%e(:) = array

    !this%f => this%e(::2)

    write(*,*) size(this%e)

  end subroutine initialize_custom1

end module types

module procedures
  use types, only: custom0, custom1

  implicit none

contains
    subroutine sub0(types, object1)
    implicit none
    type(custom0) :: types
    type(custom1) :: object1

    !integer, dimension(2) :: a

    fQE: associate( &
            a => types%a, &
            b => types%b, &
      c => object1%c, &
      d => object1%d, &
      e => object1%e &
      )

      write(*,*) a
      write(*,*) b
      write(*,*) c
      write(*,*) d
      write(*,*) e

    end associate fQE

  end subroutine sub0

end module procedures

program test

  use types, only: custom0, custom1
  use procedures, only: sub0

  implicit none

  type(custom0) :: obj0
  type(custom1) :: obj1

  !obj0 = custom0([5,6],[7,8])
  !obj1 = custom1()

  call obj1%allocate(4)
  call obj1%initialize([11,12,13,14])

  call sub0(obj0,obj1)


end program test
