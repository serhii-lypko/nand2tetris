; @xxx set A register to value of xxx
; In addition, the @xxx instruction has two side effects:
; - 1. it makes the RAM register whose address is xxx the selected memeory register, denoted M
; - 2. it makes the value of the ROM register whose address is xxx the selected instruction 
; setting A to some value ->
; manipulating selected data memory register  --OR--  doing something with selected instruction

; ⭐️ Depending on the instruction context, the contents of A can be interpreted:
; either as a data value, OR as an address in the data memory, OR as an address in the instruction memory


; -- -- Examples -- --
; (ignoring selecting instruction side effect)


; set value of RAM[100] to 17

; A servers as data register
@17
D = A

; A servers as memory address register
@100
M = D


; set RAM[100] to the value of RAM[200]
@200
D = M

@100
M = D