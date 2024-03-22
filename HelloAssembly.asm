.data
	text_HelloWorld:	.asciiz "Hello World!\n"
	text_Assembly:		.asciiz "Welcome to Assembly!\n"
	text_Username: 		.asciiz "Username: "
	myUsername: 		.asciiz "Astiris\n"
	text_Age: 		.asciiz "Age: "
	myAge: 			.word 	20
	text_Float: 		.asciiz "\nFloat: "
	myFloat: 		.float	1.50

.text
	li $v0, 4
	la $a0, text_HelloWorld
	syscall
	
	li $v0, 4
	la $a0, text_Assembly
	syscall

	li $v0, 4
	la $a0, text_Username
	syscall

	li $v0, 4
	la $a0, myUsername
	syscall

	li $v0, 4
	la $a0, text_Age
	syscall

	li $v0, 1
	lw $a0, myAge
	syscall
	
	li $v0, 4
	la $a0, text_Float
	syscall
		
	li $v0, 2
	lwc1 $f12, myFloat
	syscall
