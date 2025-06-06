// set value of @curr variable to 10
@14
D=A
@curr
M=D

// set value of @step variable to 2
@2
D=A
@step
M=D


(LOOP)
  @curr
  D=M
  @step
  D=D-M
  @curr
  M=D

  // "print" value to the RAM[0] (@R0)
  @R0
  M=D

  // Goto @LOOP if value of D > 0
  @LOOP
  D;JGT

// closed loop to terminate the program
(END)
  @END
  0;JMP

