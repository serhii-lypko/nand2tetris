// set value of RAM[0] (@R0) to the @x variable (symbol)
@R0
D=M
@x
M=D

// set value of RAM[1] (@R1) to the @y variable (symbol)
@R1
D=M
@y
M=D

// do sum
@x
D=M
@y
D=D+M

// store sum result at RAM[2] (@R2)
@R2
M=D

