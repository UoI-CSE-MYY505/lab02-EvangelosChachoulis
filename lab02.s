
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
    beq a1, zero, setzero
    addi t3, a1, -1
    
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
#-----------------------------
    slli t0, t3, 2
    add t0, t0, a0
    lw t1, 0(t0)
    beq t1, a2, set
    addi t3, t3, -1
    j prog

setzero:
    li s0, 0
    
set:
    add s0, t0, zero
    
done:
    addi a7, zero, 10 
    ecall
