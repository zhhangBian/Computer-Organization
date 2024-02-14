.data
num: .space 300
visited: .space 40
str_spcae: .asciiz " "
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

.macro getIndex(%dst,%n,%i,%j)
	mult %n,%i
	mflo %dst
	add %dst,%dst,%j
	sll %dst,%dst,2
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
readInt($s0)	#read n
readInt($s1)	#read m

li $t7,0
init1_for_i:
	beq $t7,$s0,init1_for_i_end
	
	sll $t8,$t7,2
	sw $0,visited($t8)
	
	addi $t7,$t7,1
	j init1_for_i
init1_for_i_end:

li $t7,0
init2_for_i:
	beq $t7,$s0,init2_for_i_end
	
	li $t8,0
	init2_for_j:
		beq $t8,$s0,init2_for_j_end
		
		getIndex($t0,$s0,$t7,$t8)
		sw $0,num($t0)
		
		addi $t8,$t8,1
		j init2_for_j
	init2_for_j_end:
	
	addi $t7,$t7,1
	j init2_for_i
init2_for_i_end:

li $t7,0
li $s7,1
read_for_i:
	beq $t7,$s1,read_for_i_end
	
	readInt($s2)	#read a
	readInt($s3)	#read b
	sub $s2,$s2,1
	sub $s3,$s3,1
	getIndex($t0,$s0,$s2,$s3)
	getIndex($t1,$s0,$s3,$s2)
	sw $s7,num($t0)	#num[a-1][b-1]=1
	sw $s7,num($t1)	#num[b-1][a-1]=1
	
	addi $t7,$t7,1
	j read_for_i
read_for_i_end:

li $a0,0
li $v0,0
jal dfs

printInt($v0)

li $v0, 10
syscall

#----dfs----
dfs:
li $t0,1	#also used as flag
sll $t1,$a0,2
sw $t0,visited($t1)

li $t7,0
flag_for_i:
	beq $t7,$s0,flag_for_i_end
	
	sll $t8,$t7,2
	lw $t1,visited($t8)
	and $t0,$t0,$t1
	
	addi $t7,$t7,1
	j flag_for_i
flag_for_i_end:

beqz $t0,not_fit
	getIndex($t1,$s0,$a0,$0)
	lw $t1,num($t1)
	beqz $t1,not_fit
	
	li $v0,1
	jr $ra

not_fit:

li $t7,0
dfs_for_i:
	beq $t7,$s0,dfs_for_i_end
	
	sll $t0,$t7,2
	lw $t0,visited($t0)
	getIndex($t1,$s0,$a0,$t7)
	lw $t1,num($t1)
	
	bnez $t0,not_dfs
		beqz $t1,not_dfs
		
		inStack($t7)
		inStack($ra)
		inStack($a0)
		move $a0,$t7
		jal dfs
		outStack($a0)
		outStack($ra)
		outStack($t7)
		
	not_dfs:
	
	addi $t7,$t7,1
	j dfs_for_i
dfs_for_i_end:

sll $t0,$a0,2
sw $0,visited($t0)
jr $ra
