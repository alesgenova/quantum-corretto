!
!-------------------------------------------------------------------
module funct
!-------------------------------------------------------------------
!  derivatives of XC computation drivers: dmxc, dmxc_spin, dmxc_nc, dgcxc,
!                                         dgcxc_spin
!
  USE io_global, ONLY: stdout
  USE kinds,     ONLY: DP
  IMPLICIT NONE

  data exc / 'NOX', 'SLA', 'SL1', 'RXC', 'OEP', 'HF', 'PB0X', 'B3LP', 'KZK' /
  data corr / 'NOC', 'PZ', 'VWN', 'LYP', 'PW', 'WIG', 'HL', 'OBZ', &
              'OBW', 'GL' , 'KZK' /

  data gradx / 'NOGX', 'B88', 'GGX', 'PBX',  'RPB', 'HCTH', 'OPTX',&
               'TPSS', 'PB0X', 'B3LP','PSX', 'WCX', 'HSE', 'RW86', 'PBE', &
               'META', 'C09X', 'SOX', 'M6LX', 'Q2DX', 'GAUP', 'PW86', 'B86B', &
               'OBK8', 'OB86', 'EVX', 'B86R' / 

  data gradc / 'NOGC', 'P86', 'GGC', 'BLYP', 'PBC', 'HCTH', 'TPSS',&
               'B3LP', 'PSC', 'PBE', 'META', 'M6LC', 'Q2DC' / 

  data nonlocc / '    ', 'VDW1', 'VDW2', 'VV10' / 

CONTAINS
  !---------------------------------------------------------------------
  subroutine set_screening_parameter (scrparm_)
     implicit none
     real(DP):: scrparm_
     screening_parameter = scrparm_
     write (stdout,'(5x,a,f12.7)') 'EXX Screening parameter changed: ', &
          & screening_parameter
  end subroutine set_screening_parameter
  !----------------------------------------------------------------------
  function get_screening_parameter ()
     real(DP):: get_screening_parameter
     get_screening_parameter = screening_parameter
     return
  end function get_screening_parameter
  !-----------------------------------------------------------------------
  subroutine set_gau_parameter (gauparm_)
     implicit none
     real(DP):: gauparm_
     gau_parameter = gauparm_
     write (stdout,'(5x,a,f12.7)') 'EXX Gau parameter changed: ', &
          & gau_parameter
  end subroutine set_gau_parameter
  !----------------------------------------------------------------------
  function get_gau_parameter ()
     real(DP):: get_gau_parameter
     get_gau_parameter = gau_parameter
     return
  end function get_gau_parameter
  !-----------------------------------------------------------------------


end module funct
