@10
D=A
@i
M=D
; now the RAM[i] == 10


@15
D=A
@j
M=D
; now the RAM[j] == 15


@i
D=M
@j
D=D+M
@R0
M=D
; sum of RAM[i] + RAM[j] now stored in @R0 (which is RAM[0])