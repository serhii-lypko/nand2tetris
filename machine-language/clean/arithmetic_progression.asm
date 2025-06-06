@0
D=A
@result
M=D

@R0
D=M
@step
M=D


(LOOP)
  @result
  D=M

  @step
  D=D+M

  @result
  M=D

  // "print" value to the RAM[1] (@R1)
  @R1
  M=D

  @LOOP
  0;JMP