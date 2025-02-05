
la a1, array
lw a2, arrayLen

slli a2, a2, 2 ; Multiply arrayLen by 4

maxValue

; a0 will hold the biggest value
; t0 will hold the offset from the beginning
; t1 will hold the offset + array pointer
; t2 will hold the current value

andi a0, a0, 0
andi t0, t0, 0

loop

add t1, a1, t0
lw t2, 0[t1]
blt t2, a0, increment
mv a0, t2

increment

addi t0, t0, 4
blt t0, a2, loop

li a7, 3
ecall
li a7, 5
ecall


array defw 1, 2, 0, 4, 5, 3, 3, 10, 4, 6
arrayLen defw 10
