// set @current variable to value of register 0
@R0
D=M
@current
M=D

// set @current variable to value of register 1
@R1
D=M
@step
M=D


// could be named as (LOOP)
(START) 
  @current
  D=M
  @step
  D=D+M

  @current
  M=D

  @R2
  M=D

  @START   
  0;JMP