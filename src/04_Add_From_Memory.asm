# Assignment 3: MARS Fundamentals
# Program 4: Load two integers from memory, add them,
# and store the result back in memory

.data
number1:       .word 25
number2:       .word 17
stored_result: .word 0
message:       .asciiz "Stored result: "

.text
.globl main

main:
    lw $t0, number1
    lw $t1, number2

    add $t2, $t0, $t1
    sw $t2, stored_result

    li $v0, 4
    la $a0, message
    syscall

    li $v0, 1
    lw $a0, stored_result
    syscall

    li $v0, 10
    syscall