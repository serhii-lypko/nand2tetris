// set @current
@R0
D=M
@current
M=D

// set @step
@R1
D=M
@step
M=D

(LOOP)
  // @update @current
  @current
  D=M
  @step
  D=D+M
  @current
  M=D

  // increment @step
  @step
  M=M+1

  // "print" @current to @R3
  @current
  D=M
  @R3
  M=D

  // "print" @step to @R4
  @step
  D=M
  @R4
  M=D

  @LOOP
  0;JMP