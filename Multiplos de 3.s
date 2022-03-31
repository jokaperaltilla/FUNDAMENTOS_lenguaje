.data # Data declaration section
	text01: .asciiz "Los multiplos de 3 son: \n"
	text02: .asciiz ""
	text03: .asciiz "\n"
	
.text # Assembly language instructions
main: # Start of code section	
	
	li $t1,0 # index
	li $t2,0 # iteration number
	li $t3,0
	li $t4,1 # multiplicador
	li $t5,3 
	
	# show text "Los multiplos de 3 son:"
	li $v0, 4 				
	la $a0, text01
	syscall
	
	# show text "ingrese numero"
	li $v0, 4 				
	la $a0, text02 		
	syscall 			
	
	# read iteration number
	li $v0,5
	syscall
	
	# t2 alamcena el numero de iteraciones
	move $t2,$v0 
	
	add $t1,$t1,1   # incrementamos el contador
	
	Loop:

		# multilplos
		mul $t3,$t5,$t4
		add $t4,$t4,1

		# i++
		add $t1,$t1,1  

		bge $t3,$t2, Exit

		move $a0, $t3
		li $v0, 1 
		syscall	

		li $v0, 4 				
		la $a0, text03 		
		syscall 
		
		j Loop
	Exit:		
	
	jr $ra