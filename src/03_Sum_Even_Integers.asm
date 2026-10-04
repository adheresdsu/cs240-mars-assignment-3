# Assignment 3: MARS Fundamentals
# Program 3: Sum of even integers from 1 through 100

.data
result_message: .asciiz "Sum of even integers from 1 through 100: "

.text
.globl main

main:
    li $t0, 2
    li $t1, 102
    li $t2, 0

sum_loop:
    add $t2, $t2, $t0
    addi $t0, $t0, 2
    bne $t0, $t1, sum_loop

    li $v0, 4
    la $a0, result_message
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall