.data
num: .space 800
str_enter: .asciiz "\n"

.macro readInt(%dst)
	li $v0,5
	syscall
	move %dst,$v0
.end_macro

.macro printInt(%dst)
	move $a0,%dst
	li $v0,1
	syscall
.end_macro

.macro printStr(%dst)
	la $a0,%dst
	li $v0,4
	syscall
.end_macro

.text
readInt($s0)	#read n
li $s1,0	# $s1=h=0

li $t7,0
li $t8,199
init_for_i:
	beq $t7,$t8,init_for_i_end
	
	sll $t9,$t7,2
	sw $0,num($t9)
	
	addi $t7,$t7,1
	j init_for_i
init_for_i_end:

li $t8,1
sw $t8,num($0)	#num[0]=1

li $t7,2
li $s7,10
compute_for_i:
	bgt $t7,$s0,compute_for_i_end

	li $s2,0	#out represent a[j]%10
	
	li $t8,0	#j=0
	while:
		bgt $t8,$s1,while_end
		
		sll $t1,$t8,2
		lw $t0,num($t1)	#num[j]
		
		mult $t0,$t7	#num[j]*i
		mflo $t0
		add $t0,$t0,$s2	#num[j]=num[j]*i+out
		
		div $t0,$s7
		mflo $s2	#out=num[j]/10
		mfhi $t0	#num[j]=num[j]%10
		sw $t0,num($t1)
		
		addi $t8,$t8,1	#j++
		
		ble $t8,$s1,not_h	#if(j>h && out)
			beq $s2,$0,not_h
			addi $s1,$s1,1	#h++
		not_h:
		
		j while
	while_end:
	
	addi $t7,$t7,1
	j compute_for_i
compute_for_i_end:

move $t7,$s1
prt_for_i:
	blt $t7,$0,prt_for_i_end
	
	sll $t0,$t7,2
	lw $t1,num($t0)
	printInt($t1)	#print a[i]
	
	subi $t7,$t7,1
	j prt_for_i
prt_for_i_end:

li $v0, 10
syscall
