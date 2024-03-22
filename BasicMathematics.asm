# Expected Output
# Remainder = 2
# Quotient = 7
# Sum = 12
# Difference = 18
# Product = 36

.data
	space:				.asciiz " "
	text_Values: 			.asciiz "\nValues: 30, 4, 5"
	text_Username: 			.asciiz "Username: "
	myUsername: 			.asciiz "Astiris\n"
	text_Remainder:			.asciiz "\nRemainder = "
	text_Quotient: 			.asciiz "\nQuotient = "
	text_Sum: 			.asciiz "\nSum = "
	text_Difference: 		.asciiz "\nDifference = "
	text_Product: 			.asciiz "\nProduct = "
	
	text_DivisionOperand: 		.asciiz " / "
	text_AdditionOperand: 		.asciiz " + "
	text_SubtractionOperand: 	.asciiz " - "
	text_MultiplicationOperand: 	.asciiz " * "
	text_EqualOperand:		.asciiz " = "
.text

	li $v0, 4
	la $a0, text_Username
	syscall
	li $v0, 4
	la $a0, myUsername
	syscall
	
	li $v0, 4
	la $a0, text_Values
	syscall
	
	addi $t0, $zero, 30
	addi $t1, $zero, 4
	addi $t2, $zero, 5
	
	div $t0, $t1
	mflo $s0	#Quotient
	mfhi $s1	#Remainder
	
		li $v0, 4
		la $a0, text_Remainder
		syscall

			li $v0, 1
			move $a0, $t0
			syscall
	
			li $v0, 4
			la $a0, text_DivisionOperand
			syscall
	
			li $v0, 1
			move $a0, $t1
			syscall
	
			li $v0, 4
			la $a0, text_EqualOperand
			syscall
	
			li $v0, 1
			move $a0, $s1
			syscall
	
		li $v0, 4
		la $a0, text_Quotient
		syscall

			li $v0, 1
			move $a0, $t0
			syscall
	
			li $v0, 4
			la $a0, text_DivisionOperand
			syscall
	
			li $v0, 1
			move $a0, $t1
			syscall
	
			li $v0, 4
			la $a0, text_EqualOperand
			syscall


			li $v0, 1
			move $a0, $s0
			syscall
	
		li $v0, 4
		la $a0, text_Sum
		syscall
			add $t3, $s0 , $t2
			
			li $v0, 1
			move $a0, $t2
			syscall
			
			li $v0, 4
			la $a0, text_AdditionOperand
			syscall
			
			li $v0, 1
			move $a0, $s0
			syscall

			li $v0, 4
			la $a0, text_EqualOperand
			syscall
			
			li $v0, 1
			move $a0, $t3
			syscall
	
		li $v0, 4
		la $a0, text_Difference
		syscall
			sub $t4, $t0, $t3
			
			li $v0, 1
			move $a0, $t3
			syscall
			
			li $v0, 4
			la $a0, text_SubtractionOperand
			syscall
			
			li $v0, 1
			move $a0, $t0
			syscall

			li $v0, 4
			la $a0, text_EqualOperand
			syscall
			
			
			li $v0, 1
			move $a0, $t4
			syscall
	
		li $v0, 4
		la $a0, text_Product
		syscall
			mult $t4, $s1
			mflo $t5
			
			li $v0, 1
			move $a0, $t4
			syscall
			
			li $v0, 4
			la $a0, text_MultiplicationOperand
			syscall
			
			li $v0, 1
			move $a0, $s1
			syscall
			
			li $v0, 4
			la $a0, text_EqualOperand
			syscall
			
			li $v0, 1
			move $a0, $t5
			syscall