// reading value of @a from RAM[0]
@R0
D=M
@a
M=D

// reading value of @b from RAM[1]
@R1
D=M
@b
M=D

@result
M=0


(LOOP)
  @a
  D=M

  // we'll be summing up value @a "@b times"
  @result
  M=D+M
  @b
  M=M-1

  @b
  D=M

  @LOOP
  D;JGT

  // print mult result to RAM[3] (@R3)
  @result
  D=M
  @R3
  M=D

(END)
  @END
  0;JMP
  
