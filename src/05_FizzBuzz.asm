# Assignment 3: MARS Fundamentals
# Program 5: FizzBuzz from 1 through 100

.data
fizz_text:     .asciiz "Fizz"
buzz_text:     .asciiz "Buzz"
fizzbuzz_text: .asciiz "FizzBuzz"
newline:       .asciiz "\n"

.text
.globl main

main:
    li $t0, 1
    li $t4, 101

fizzbuzz_loop:
    # Check divisibility by 15
    li $t1, 15
    div $t0, $t1
    mfhi $t2
    beq $t2, $zero, print_fizzbuzz

    # Check divisibility by 3
    li $t1, 3
    div $t0, $t1
    mfhi $t2
    beq $t2, $zero, print_fizz

    # Check divisibility by 5
    li $t1, 5
    div $t0, $t1
    mfhi $t2
    beq $t2, $zero, print_buzz

    # Print the number
    li $v0, 1
    move $a0, $t0
    syscall
    j print_newline

print_fizzbuzz:
    li $v0, 4
    la $a0, fizzbuzz_text
    syscall
    j print_newline

print_fizz:
    li $v0, 4
    la $a0, fizz_text
    syscall
    j print_newline

print_buzz:
    li $v0, 4
    la $a0, buzz_text
    syscall

print_newline:
    li $v0, 4
    la $a0, newline
    syscall

    addi $t0, $t0, 1
    bne $t0, $t4, fizzbuzz_loop

    li $v0, 10
    syscall