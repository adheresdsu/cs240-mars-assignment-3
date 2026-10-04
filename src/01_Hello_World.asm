# Assignment 3: MARS Fundamentals
# Program 1: Hello World

.data
message: .asciiz "Hello World!\n"

.text
.globl main

main:
    li $v0, 4
    la $a0, message
    syscall

    li $v0, 10
    syscall