la a1, array
lw a2, arrayLen

sumOfSquares

slli a2, a2, 2  ; Multiply len by 4 to get counter

; a0 is my total
; t1 is my offset
; t2 is the holder of the current item pointer
; t3 is the storage of the current item

andi t1, t1, 0  ; Offset zero
andi a0, a0, 0  ; Offset zero

loop

add t2, a1, t1 ; Add offset to array pointer and store in t2
lw t3, 0[t2]  ; Load item at pointer t2 into t3
mul t3, t3, t3  ; Square the number
add a0, a0, t3  ; Add to total
addi t1, t1, 4  ; Increment offset
blt t1, a2, loop 

li a7, 3
ecall
li a7, 5
ecall





array defw 1, 2, 3
arrayLen defw 3
