['alloc', 'init', 'dealloc', 'auto_error', 'init_autopilot', 'card_autopilot', 'add_rule', 'assign_rule', 'parse_mailbox']

! autopilot.f90
!********************************************************************************
! autopilot.f90                                 Copyright (c) 2005 Targacept, Inc.
!********************************************************************************
!   The Autopilot Feature suite is a user level enhancement that enables the
! following features:
!      automatic restart of a job;
!      preconfiguration of job parameters;
!      on-the-fly changes to job parameters;
!      and pausing of a running job.
subroutine alloc(this)
  implicit none

  class(autopilot_type), intent(inout) :: this

  ! already allocated
  this%is_alloc = .true.
  return
end subroutine alloc

subroutine init(this)
  implicit none
  ! already initialized

  class(autopilot_type), intent(inout) :: this

  this%is_init = .true.
  return

end subroutine init

subroutine dealloc(this)
  implicit none
  class(autopilot_type), intent(inout) :: this

  ! already deallocated
  this%is_alloc = .false.
  return
end subroutine dealloc


  !----------------------------------------------------------------------------
  SUBROUTINE auto_error( calling_routine, message)
    !----------------------------------------------------------------------------
    ! This routine calls errore based upon the pilot property flag.
    ! If the flag is TRUE, the simulation will not stop,
    !    but the pause property flag is set to TRUE,
    !    causing pilot to force a state of sleep, 
    !    until the user can mail proper commands.
    ! Otherwise, its assumed that dynamics have not started
    ! and this call is an indirect result of read_cards.
    ! Thus the simulation will stop.
    ! Either way errore will always issues a warning message.

    IMPLICIT NONE
    !
    CHARACTER(LEN=*), INTENT(IN) :: calling_routine, message
    ! the name of the calling calling_routinee
    ! the output message
    INTEGER :: ierr
    ! the error flag

    IF (pilot_p) THEN
       ! if ierr < 0 errore writes the message but does not stop
       ierr = -1
       pause_p = .TRUE.
       !call mp_bcast(pause_p, ionode_id, world_comm)
    ELSE
       ! if ierr > 0 it stops
       ierr = 1
    ENDIF

    CALL errore( calling_routine, message, ierr )

  END SUBROUTINE auto_error


  !-----------------------------------------------------------------------
  ! AUTO (restart) MODE
  !
  ! Checks if restart files are present, just like what readfile_cp does, 
  ! which calls cp_readfile which create a path to restart.xml. 
  ! This could be checked with inquire, as in check_restartfile. 
  ! If restart_mode=auto, and restart.xml is present, 
  ! then restart_mode="restart", else its "from_scratch".
  ! Set other associated vars, appropriately.
  !
  ! Put this in setcontrol_flags on the select statement
  !-----------------------------------------------------------------------
  LOGICAL FUNCTION auto_check (ndr, outdir)
    USE io_global, ONLY: ionode, ionode_id
    USE mp,        ONLY : mp_bcast
    USE mp_world,  ONLY : world_comm
    IMPLICIT NONE
    INTEGER, INTENT(IN) :: ndr    !  I/O unit number
    CHARACTER(LEN=*), INTENT(IN) :: outdir
    CHARACTER(LEN=256) :: dirname, filename
    CHARACTER (LEN=6), EXTERNAL :: int_to_char
    LOGICAL :: restart_p = .FALSE.
    INTEGER :: strlen
    ! right now cp_readfile is called with outdir = ' '
    ! so, in keeping with the current design,
    ! the responsibility of setting 
    ! ndr and outdir is the calling program


    IF (ionode) THEN
       dirname = 'RESTART' // int_to_char( ndr )
       IF ( LEN( outdir ) > 1 ) THEN
          strlen  = index(outdir,' ') - 1
          dirname = outdir(1:strlen) // '/' // dirname
       END IF

       filename = TRIM( dirname ) // '/' // 'restart.xml'
       INQUIRE( FILE = TRIM( filename ), EXIST = restart_p )

       auto_check = restart_p
    END IF
    CALL mp_bcast(auto_check, ionode_id, world_comm)

    return

  END FUNCTION auto_check


  !-----------------------------------------------------------------------
  ! INITIALIZE AUTOPILOT
  !
  ! Must be done, even if not in use.
  ! Add this as a call in read_cards.f90 sub: card_default_values
  !-----------------------------------------------------------------------
  SUBROUTINE init_autopilot
    IMPLICIT NONE
    integer :: event

    pause_p = .FALSE.

    ! Initialize all events to an iteration that should never occur
    DO event=1,max_event_step
       event_step(event) = MAX_INT
    ENDDO

    n_events = 0 
    n_rules  = 0
    event_index = 1

    ! Initialize here
    !     &CONTROL
    event_isave(:)            = .false.
    event_iprint(:)           = .false.
    event_dt(:)               = .false.
    !     &SYSTEM
    !     &ELECTRONS
    event_emass(:)             = .false.
    event_electron_dynamics(:) = .false.
    event_electron_damping(:)  = .false.

    !     &IONS
    event_ion_dynamics(:)      = .false.
    event_ion_damping(:)       = .false.
    event_ion_temperature(:)   = .false.
    event_tempw(:)             = .false.
    !     &CELL
    !     &PHONON

    rule_isave(:)             = 0
    rule_iprint(:)            = 0
    rule_dt(:)                = 0.0_DP
    rule_emass(:)             = 0.0_DP
    rule_electron_dynamics(:) = 'NONE'
    rule_electron_damping(:)  = 0.0_DP
    rule_ion_dynamics(:)      = 'NONE'
    rule_ion_damping(:)       = 0.0_DP
    rule_ion_temperature(:)   = 'NOT_CONTROLLED'
    rule_tempw(:)             = 0.01_DP

  END SUBROUTINE init_autopilot



  !-----------------------------------------------------------------------
  ! subroutine CARD_AUTOPILOT
  !
  ! called in READ_CARDS and in PARSE_MAILBOX
  !-----------------------------------------------------------------------  
  SUBROUTINE card_autopilot( input_line )
    USE io_global, ONLY: ionode
    USE parser,    ONLY :  read_line
    IMPLICIT NONE
    INTEGER :: i, j, linelen
    CHARACTER(LEN=256) :: input_line
    LOGICAL            :: process_this_line = .FALSE.
    LOGICAL            :: endrules = .FALSE.
    LOGICAL            :: tend = .FALSE.
    LOGICAL, SAVE      :: tread = .FALSE.
    LOGICAL, EXTERNAL  :: matches
    CHARACTER(LEN=1), EXTERNAL :: capital

    !ASU: copied this here since it seems not to be executed during each
    !     call of the routine. Needed for multiple rules in same block
    process_this_line = .FALSE.
    endrules = .FALSE.
    tend = .FALSE.
    tread = .FALSE.
    
    ! This is so we do not read a autopilot card twice from the input file
    IF (( .NOT. pilot_p ) .and. tread ) THEN
       CALL errore( ' card_autopilot  ', ' two occurrences', 2 )
    END IF

    ! If this routined has been called from parse_mailbox
    ! the pilot_type should be set
    IF ( pilot_p ) THEN
       ! IF its MANUAL then process this line first! 
       ! other skip this line and get the next
       IF (TRIM(pilot_type) .eq. 'MANUAL') THEN
          process_this_line = .TRUE.
       ELSE IF (TRIM(pilot_type) .eq. 'PILOT') THEN
          process_this_line = .FALSE.
       ELSE IF (TRIM(pilot_type) .eq. 'AUTO') THEN
          process_this_line = .FALSE.
       ELSE
          IF( ionode ) WRITE(*,*) 'AUTOPILOT: UNRECOGNIZED PILOT TYPE!', TRIM(pilot_type), '===='
          GO TO 10
       END IF
    ELSE
       ! this routine is called from read_cards
       pilot_type = 'AUTO'
       process_this_line = .FALSE.
    END IF

    j=0
    ! must use a local (j) since n_rules may not get updated correctly
    DO WHILE ((.NOT. endrules) .and. j<=max_rules)
       j=j+1

       IF (j > max_rules) THEN
          CALL auto_error( ' AutoPilot ','Maximum Number of Dynamic Rules May Have Been Execced!')
          go to 10
       END IF

       ! Assume that pilot_p is an indicator and that
       ! this call to card_autopilot is from parse_mailbox
       ! and not from read_cards
       IF(pilot_p) THEN
          IF ( .NOT. process_this_line ) THEN
             ! get the next one
             CALL read_line( input_line, end_of_file = tend)
          END IF
       ELSE
          ! from read_cards
          CALL read_line( input_line, end_of_file = tend)
       END IF
       
       linelen = LEN_TRIM( input_line )

       DO i = 1, linelen
          input_line( i : i ) = capital( input_line( i : i ) )
       END DO

       ! If ENDRULES isnt found, add_rule will fail
       ! and we run out of line anyway
       
       IF ( tend .or. matches( 'ENDRULES', input_line ) ) GO TO 10

       ! Assume this is a rule
       CALL ADD_RULE(input_line)
       ! now, do not process this line anymore
       ! make sure we get the next one
       process_this_line = .FALSE.

    END DO

    IF( ionode ) WRITE(*,*) 'AUTOPILOT SET'

10  CONTINUE

  END SUBROUTINE card_autopilot





  !-----------------------------------------------------------------------
  ! ADD RULE
  !-----------------------------------------------------------------------
  SUBROUTINE add_rule( input_line )
    USE io_global, ONLY: ionode
    IMPLICIT NONE
    integer :: i, linelen
    integer :: eq1_pos, eq2_pos, plus_pos, colon_pos
    CHARACTER(LEN=256) :: input_line
    CHARACTER(LEN=32)  :: var_label
    CHARACTER(LEN=32)  :: value_str
    INTEGER            :: on_step, now_step, plus_step
    integer            :: ios
    integer            :: event

    LOGICAL, EXTERNAL  :: matches
    CHARACTER(LEN=1), EXTERNAL :: capital


    ! this is a temporary local variable
    event = n_events

    ! important for parsing
    i=0
    eq1_pos   = 0
    eq2_pos   = 0
    plus_pos  = 0
    colon_pos = 0

    linelen=LEN_TRIM( input_line )


    ! Attempt to get PLUS SYMBOL
    i = 1
    do while( (plus_pos .eq. 0) .and. (i <= linelen) )
       i = i + 1
       if(input_line( i : i ) .eq. '+') then
          plus_pos = i
       endif
    end do

    ! Attempt to get a colon
    i = 1
    do while( (colon_pos .eq. 0) .and. (i <= linelen) )
       i = i + 1
       if(input_line( i : i ) .eq. ':') then
          colon_pos = i
       endif
    end do

    ! Attempt to get first equals
    i = 1
    do while( (eq1_pos .eq. 0) .and. (i <= linelen) )
       i = i + 1
       if(input_line( i : i ) .eq. '=') then
          eq1_pos = i
       endif
    end do


    ! Attempt to get second equals
    if ((eq1_pos .ne. 0) .and. (eq1_pos < colon_pos)) then
       i = colon_pos + 1
       do while( (eq2_pos .eq. 0) .and. (i <= linelen) )
          i = i + 1
          if(input_line( i : i ) .eq. '=') then
             eq2_pos = i
          endif
       end do
    endif

    ! Complain if there is a bad parse
    if (colon_pos .eq. 0) then
       call auto_error( ' AutoPilot ','Missing colon separator')
       go to 20
    endif

    if (eq1_pos .eq. 0) then
       call auto_error( ' AutoPilot ','Missing equals sign')
       go to 20
    endif

    if ((plus_pos > 0) .and. (eq1_pos < colon_pos)) then
       call auto_error( ' AutoPilot ','equals and plus found prior to colon')
       go to 20
    endif


    !================================================================================
    ! Detect events
    IF ( (pilot_type .eq. 'MANUAL') .or. (pilot_type .eq. 'PILOT') ) THEN
       !-------------------------------------------
       !Do the equivalent of the following:
       !READ(input_line, *) now_label, plus_label1, plus_step, colon_label, var_label, eq_label2, value_str
       !Format:
       ! [NOW [+ plus_step] :] var_label = value_str
       !-------------------------------------------

       ! if there is a NOW, get it and try to get plus and plus_step

       IF ( matches( 'NOW', input_line ) ) THEN
          ! Attempt to get PLUS_STEP
          plus_step = 0
          ! if all is non-trivial, read a PLUS_STEP
          if ((plus_pos > 0) .and. (colon_pos > plus_pos)) then
             ! assume a number lies between
             read(input_line(plus_pos+1:colon_pos-1),*,iostat=ios) plus_step
             if(ios .ne. 0) then
                CALL auto_error( ' AutoPilot ','Value Type Mismatch on NOW line!')
                go to 20
             end if
          end if
          ! set NOW event
          now_step = current_nfi + plus_step
       ELSE
          ! set NOW event
          now_step = current_nfi
       END IF


       !================================================================================
       ! set event
       !
       ! Heres where it get interesting
       ! We may have a new event , or not! :)

       IF ( ((event-1) .gt. 0) .and. ( now_step .lt. event_step(event-1)) ) THEN
          IF( ionode ) write(*,*) ' AutoPilot: current input_line', input_line 
          CALL auto_error( ' AutoPilot ','Dynamic Rule Event Out of Order!')
          go to 20
       ENDIF

       IF ( (event .eq. 0) .or. ( now_step .gt. event_step(event)) ) THEN
          ! new event
          event = event + 1

          IF (event > max_event_step) THEN
             IF( ionode ) write(*,*) ' AutoPilot: current input_line', input_line 
             CALL auto_error( ' AutoPilot ','Maximum Number of Dynamic Rule Event Exceeded!')
             go to 20
          ENDIF

          event_step(event) = now_step
          n_events = event       
       ENDIF


    ELSE IF ( matches( 'ON_STEP', input_line ) ) THEN
       ! Assuming pilot_type is AUTO
       ! if it isnt and ON_STEP these rules wont take anyway

       !-------------------------------------------
       !Do the equivalent of the following:
       !READ(input_line, *) on_step_label, eq_label1, on_step, colon_label, var_label, eq_label2, value_str
       !Format:
       ! ON_STEP = on_step : var_label = value_str
       !-------------------------------------------

       IF( ionode ) write(*,*) 'ADD_RULE: POWER STEERING'

       ! Attempt to get ON_STEP
       on_step = MAX_INT
       ! if all is non-trivial, read a PLUS_STEP
       if ((eq1_pos > 0) .and. (colon_pos > eq1_pos)) then
          ! assume a number lies between
          read(input_line(eq1_pos+1:colon_pos-1),*,iostat=ios) on_step
          if(ios .ne. 0) then
             CALL auto_error( ' AutoPilot ','Value Type Mismatch on ON_STEP line!')
             go to 20
          end if
       end if
       


       !================================================================================
       ! set event
       !
       ! Heres where it get interesting
       ! We may have a new event , or not! :)       


       IF ( ((event-1) .gt. 0) .and. ( on_step .lt. event_step(event-1)) ) THEN
          IF( ionode ) write(*,*) ' AutoPilot: current input_line', input_line 
          CALL auto_error( ' AutoPilot ','Dynamic Rule Event Out of Order!')
          go to 20
       ENDIF


       IF ( (event .eq. 0) .or. (on_step .gt. event_step(event)) ) THEN
          ! new event
          event = event + 1
          IF (event > max_event_step) THEN
             IF( ionode ) write(*,*) ' AutoPilot: current input_line', input_line
             CALL auto_error( ' AutoPilot ','Maximum Number of Dynamic Rule Event Exceeded!')
             go to 20
          ENDIF
          event_step(event) = on_step
          n_events = event       
       ENDIF

    END IF ! Event Detection Complete


    !-------------------------------------
    ! Now look for a label and a value
    !-------------------------------------

    if (eq2_pos .eq. 0) then
       var_label = input_line(colon_pos+1: eq1_pos-1)    
       read( input_line(eq1_pos+1:linelen), *, iostat=ios) value_str  
       if(ios .ne. 0) then
          CALL auto_error( ' AutoPilot ','Value Type Mismatch on NOW_STEP line!')
          go to 20
       end if
    else
       var_label = input_line(colon_pos+1: eq2_pos-1)    
       read( input_line(eq2_pos+1:linelen), *, iostat=ios) value_str  
       if(ios .ne. 0) then
          CALL auto_error( ' AutoPilot ','Value Type Mismatch on ON_STEP line!')
          go to 20
       end if
    endif

    ! The Assignment must lie outside the new event scope since
    ! there can exists more than one rule per event

    IF ( (n_rules+1) .gt. max_rules) THEN
       IF( ionode ) write(*,*) ' AutoPilot: current n_rules', n_rules
       CALL auto_error( ' AutoPilot ', ' invalid number of rules ')
       go to 20
    END IF

    call assign_rule(event, var_label, value_str)    

    !IF( ionode ) write(*,*) '  Number of rules: ', n_rules

    FLUSH(6)

20  CONTINUE

  END SUBROUTINE add_rule


  !-----------------------------------------------------------------------
  ! ASSIGN_RULE
  !-----------------------------------------------------------------------
  SUBROUTINE assign_rule(event, var, value)
    USE io_global, ONLY: ionode
    IMPLICIT NONE
    INTEGER :: i, event, varlen
    CHARACTER(LEN=32) :: var
    CHARACTER(LEN=32) :: value
    INTEGER   :: int_value
    REAL      :: real_value
    REAL(DP) :: realDP_value
    LOGICAL   :: assigned
    LOGICAL, EXTERNAL  :: matches
    CHARACTER(LEN=1), EXTERNAL :: capital


    var = TRIM(var)
    varlen = LEN_TRIM(var)

    DO i = 1, varlen
       var( i : i ) = capital( var( i : i ) )
    END DO


    IF( ionode ) write(*,'("   Reading rule: ",A20,A20)' ) var, value
    assigned = .TRUE.

    IF ( matches( "ISAVE", var ) ) THEN
       read(value, *) int_value
       rule_isave(event)  = int_value
       event_isave(event) = .true.
    ELSEIF ( matches( "IPRINT", var ) ) THEN
       read(value, *) int_value
       rule_iprint(event)  = int_value
       event_iprint(event) = .true.
    ELSEIF ( matches( "DT", var ) ) THEN
       read(value, *) real_value
       rule_dt(event)  = real_value
       event_dt(event) = .true.
       !IF( ionode ) write(*,*) 'RULE_DT', rule_dt(event), 'EVENT', event
    ELSEIF ( matches( "EMASS", var ) ) THEN
       read(value, *) realDP_value
       rule_emass(event)  = realDP_value
       event_emass(event) = .true.
    ELSEIF ( matches( "ELECTRON_DYNAMICS", var ) ) THEN
       read(value, *) value
       if ((value .ne. 'SD') .and. (value .ne. 'VERLET') .and. (value .ne. 'DAMP') .and. (value .ne. 'NONE')) then
          call auto_error(' autopilot ',' unknown electron_dynamics '//trim(value) )
          assigned = .FALSE.
          go to 40
       endif
       rule_electron_dynamics(event)  = value
       event_electron_dynamics(event) = .true.
    ELSEIF ( matches( "ELECTRON_DAMPING", var ) ) THEN
       read(value, *) realDP_value
       rule_electron_damping(event)  = realDP_value
       event_electron_damping(event) = .true.
    ELSEIF ( matches( "ION_DYNAMICS", var ) ) THEN
       read(value, *) value
       if ((value .ne. 'SD') .and. (value .ne. 'VERLET') .and. (value .ne. 'DAMP') .and. (value .ne. 'NONE')) then
          call auto_error(' autopilot ',' unknown ion_dynamics '//trim(value) )
          assigned = .FALSE.
          go to 40
       endif
       rule_ion_dynamics(event)  = value
       event_ion_dynamics(event) = .true.
    ELSEIF ( matches( "ION_DAMPING", var ) ) THEN
       read(value, *) realDP_value
       rule_ion_damping(event)  = realDP_value
       event_ion_damping(event) = .true.
    ELSEIF ( matches( "ION_TEMPERATURE", var ) ) THEN
       read(value, *) value
       if ((value .ne. 'NOSE') .and. (value .ne. 'NOT_CONTROLLED') .and. (value .ne. 'RESCALING')) then
          call auto_error(' autopilot ',' unknown ion_temperature '//trim(value) )
          assigned = .FALSE.
          go to 40
       endif
       rule_ion_temperature(event)  = value
       event_ion_temperature(event) = .true.
    ELSEIF ( matches( "TEMPW", var ) ) THEN
       read(value, *) realDP_value
       rule_tempw(event)  = realDP_value
       event_tempw(event) = .true.
    ELSE
       CALL auto_error( 'autopilot', ' ASSIGN_RULE: FAILED  '//trim(var)//' '//trim(value) )
    END IF

40  if (assigned) then
       n_rules   = n_rules + 1
    else
       IF( ionode ) write(*,*) '  Autopilot: Rule Assignment Failure '
       CALL auto_error( 'autopilot', ' ASSIGN_RULE: FAILED  '//trim(var)//' '//trim(value) )
    endif

  END SUBROUTINE assign_rule




  !-----------------------------------------------------------------------
  ! PARSE_MAILBOX
  !
  ! Read the mailbox with a mailbox parser
  ! if it starts with ON_STEP, then apply to event table etc
  ! if not the try to establish that its a variable to set right now
  !-----------------------------------------------------------------------
  SUBROUTINE parse_mailbox ()
    USE io_global, ONLY: ionode
    USE parser, ONLY :  read_line
    IMPLICIT NONE
    INTEGER :: i
    CHARACTER(LEN=256) :: input_line
    LOGICAL            :: tend

    CHARACTER(LEN=1), EXTERNAL :: capital
    LOGICAL, EXTERNAL  :: matches


    ! we can use this parser routine, since parse_unit=pilot_unit
    CALL read_line( input_line, end_of_file=tend )
    IF (tend) GO TO 50

    DO i = 1, LEN_TRIM( input_line )
       input_line( i : i ) = capital( input_line( i : i ) )
    END DO

    ! This conditional implements the PAUSE feature calling init_auto_pilot, 
    ! will reset this modules global PAUSE_P variable to FALSE
    IF ( matches( "PAUSE", input_line ) .or. &
         matches( "SLEEP", input_line ) .or. &
         matches( "HOVER", input_line ) .or. &
         matches( "WAIT",  input_line ) .or. &
         matches( "HOLD",  input_line ) ) THEN

       IF( ionode ) write(*,*) 'SLEEPING'
       IF( ionode ) write(*,*) 'INPUT_LINE=', input_line
       pause_p = .TRUE.
     ! now you can pass continue to resume 
    ELSE IF (matches( "CONTINUE", input_line ) .or. &
             matches( "RESUME", input_line ) ) THEN
       IF( ionode ) write(*,*) 'RUNNING'
       IF( ionode ) write(*,*) 'INPUT_LINE=', input_line
       pause_p = .FALSE.

       ! Now just quit this subroutine
    ELSE
       ! Also, We didnt see a PAUSE cmd!
       pause_p = .FALSE.

       ! now lets detect the mode for card_autopilot
       ! even though this line will be passed to it the first time

       IF ( matches( "AUTOPILOT", TRIM(input_line) ) ) THEN
          IF( ionode ) WRITE(*,*) '  New autopilot course detected' 
          pilot_type ='AUTO'
       ELSE IF (matches( "PILOT", TRIM(input_line) ) ) THEN
          IF( ionode ) WRITE(*,*) '  Relative pilot course correction detected'
          pilot_type ='PILOT'
       ELSE IF (matches( "NOW", TRIM(input_line) ) ) THEN
          IF( ionode ) WRITE(*,*) '  Manual piloting detected'
          pilot_type ='MANUAL'
       ELSE
          ! Well lets just pause since this guys is throwing trash
          IF( ionode ) WRITE(*,*) '  Mailbox contents not understood: pausing'
          pause_p = .TRUE.
       ENDIF

    END IF

    IF (pause_p) GO TO 50


    ! ok if one adds a rule during steering`
    ! event table must be cleared (from steer point) forward
    !
    ! Every nodes gets this (and the call to card_autopilot
    ! which calls add_rule, which calls assign_rule, etc
    ! In this way we sync the event table
    ! Then we shouldn't have to sync employ_rules variable
    ! changes, or their subroutine side effects (like ions_nose_init)  

    CALL init_autopilot()

    CALL card_autopilot( input_line )

50  CONTINUE

  end subroutine parse_mailbox


