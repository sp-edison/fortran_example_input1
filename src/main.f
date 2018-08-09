      program sample1

      CHARACTER(len=16) :: cmd_option_name , value_name , temp
      CHARACTER(len=512) :: sde
      INTEGER :: num_of_args, i, io_status
      LOGICAL :: args_error_flag = .false.

      num_of_args = iargc()

      do i=1, num_of_args, 2
            call getarg(i,cmd_option_name)

            if( cmd_option_name .eq. "-i") then
                  call getarg(i+1,sde)
                  write (*,*)  sde
            else
                  args_error_flag = .true.
                  write (*,*) "ERROR: INVALID COMAND OPTION: " ,
     +            cmd_option_name
            endif
      enddo

      if ( args_error_flag .eqv. .true. ) then
            write (*,*) "CHECK YOUR COMAND OPTION"
            stop
      endif
        
      write (*,*) "Input file path : ", sde



      end program
