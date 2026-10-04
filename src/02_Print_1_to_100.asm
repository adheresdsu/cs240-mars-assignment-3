# Assignment 3: MARS Fundamentals
# Program 2: Print integers 1 through 100

.data
separator: .asciiz " "

.text
.globl main

main:
    li $t0, 1
    li $t1, 101

print_loop:
    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, separator
    syscall

    addi $t0, $t0, 1
    bne $t0, $t1, print_loop

    li $v0, 10
    syscall