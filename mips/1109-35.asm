.data
num: .space 120
hash: .space 120
str_space: .asciiz " "
str_enter: .asciiz "\n"

.macro readChar(%dst)
	li $v0,12
	syscall
	move %dst,$v0
.end_macro 

.macro readInt(%dst)
	li $v0,5
	syscall
	move %dst,$v0
.end_macro 

.macro printStr(%dst)
	li $v0,4
	la $a0,%dst
	syscall
.end_macro

.macro printInt(%dst)
	li $v0,1
	move $a0,%dst
	syscall
.end_macro

.macro printChar(%dst)
	li $v0,11
	addi $a0,%dst,97
	syscall
.end_macro

.text
#initial
li $t7,0
init_for_i:
	beq $t7,26,init_for_i_end
	
	sll $t8,$t7,2
	li $s7,-1
	sw $0,num($t8)
	sw $s7,hash($t8)
	
	addi $t7,$t7,1
	j init_for_i
init_for_i_end:

#read n
readInt($s0)

li $s2,0	#count

#read char
li $t7,0
read_for_i:
	beq $t7,$s0,read_for_i_end
	
	readChar($s1)
	
	subi $s1,$s1,97
	sll $t8,$s1,2
	lw $t0,hash($t8)
	bne $t0,$s7,appeared
		sw $s2,hash($t8)
		addi $s2,$s2,1
	appeared:
		lw $t0,num($t8)
		addi $t0,$t0,1
		sw $t0,num($t8)
		
	addi $t7,$t7,1
	j read_for_i
read_for_i_end:

li $t7,0
prt_for_i:
	beq $t7,$s2,prt_for_i_end
	
	li $t8,0
	search_for_j:
		beq $t8,26,search_for_j_end
		
		sll $t0,$t8,2
		lw $t1,hash($t0)
		beq $t1,$t7,print
			addi $t8,$t8,1
			j search_for_j
		print:
			printChar($t8)
			printStr(str_space)
			lw $t3,num($t0)
			printInt($t3)
			printStr(str_enter)
	search_for_j_end:
	
	addi $t7,$t7,1
	j prt_for_i
prt_for_i_end:

li $v0, 10
syscall
