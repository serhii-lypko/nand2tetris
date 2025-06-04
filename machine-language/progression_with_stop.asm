/*
  Pseudocode:
  (assuming @R0 has been set to max value befor program run)
  
  sum = 0
  i = 1

  LOOP:
    if (sum > R0) goto STOP
    sum = sum + i
    i++

  STOP:
    R1 = sum
*/

// 630

@sum
M=0

@i
M=1

(LOOP)
  // first check if @sum desired_val - sum == 0
  // if yes - goto STOP, otherwise - continue loop
  @R0
  D=M
  @sum
  D=D-M
  @STOP
  D;JGT

  @sum
  D=M
  @i
  D=D+M

  @sum
  M=D
  @i
  M=M+1

  @LOOP
  0;JMP

(STOP)
  @sum
  D=M
  @R1
  M=D

(END)
  @END
  0;JMP