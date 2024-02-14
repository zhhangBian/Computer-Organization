.data
symbol: .space 100
array: .space 100
str_space: .asciiz " "
str_enter: .asciiz "\n"

.macro readInt(%dst)
	li $v0,5
	syscall
	move %dst,$v0
.end_macro

.macro printStr(%dst)
	inStack($a0)
	la $a0,%dst
	li $v0,4
	syscall 
	outStack($a0)
.end_macro

.macro printInt(%dst)
	move $a0,%dst
	li $v0,1
	syscall
.end_macro

.macro inStack(%dst)
	sw %dst,0($sp)
	subi $sp,$sp,4
.end_macro

.macro outStack(%dst)
	addi $sp,$sp,4
	lw %dst,0($sp)
.end_macro 

.text
readInt($s0)

li $a0,0
jal fac

li $v0,10
syscall

#---------fac-------#
fac:
bge $a0,$s0,print	#index>=n

not_print:
	li $t0,0	#j=0
	for_j:
		beq $t0,$s0,for_j_end	#i<n
		
		sll $t6,$t0,2
		lw $t1,symbol($t6)	# $t1=symbol[i]
		bnez $t1,else	#if symbol[i]==0
			add $t2,$t0,1
			sll $t7,$a0,2
			sw $t2,array($t7)	#array[index]=i+1
			
			li $t1,1
			sw $t1,symbol($t6)	#symbol[i]=1
			
			inStack($ra)
			inStack($a0)
			inStack($t0)
			addi $a0,$a0,1
			jal fac		#fac(index+1)
			outStack($t0)
			outStack($a0)
			outStack($ra)
			
			sll $t6,$t0,2
			li $t2,0
			sw $t2,symbol($t6)	#symbol[i]=0
		else:
		
		addi $t0,$t0,1
		j for_j
	for_j_end:
	jr $ra

print:
	li $t0,0	#i=0
	for_i:
		beq $t0,$s0,for_i_end	#i<n
		
		sll $t1,$t0,2
		lw $t2,array($t1)
		printInt($t2)
		printStr(str_space)
		
		addi $t0,$t0,1
		j for_i
	for_i_end:
	printStr(str_enter)
	
	jr $ra