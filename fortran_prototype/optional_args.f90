module subs

contains
  subroutine sub0(alpha,a,b,c)
    implicit none
    integer, intent(in) :: alpha
    integer, optional, intent(in) :: a, b, c

    write(*,*) "alpha is equal to", alpha
    if (present(a)) write(*,*) "a is present and equal to", a
    if (present(b)) write(*,*) "b is present and equal to", b
    if (present(c)) write(*,*) "c is present and equal to", c

  end subroutine sub0
end module subs

program test
  use subs
  implicit none

  call sub0(alpha=-1,c=2)

end program test
