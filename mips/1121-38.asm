.data
num: .space 300
visited: .space 300

.macro getIndex(%dst,%i,%y)
	mult $s1,%i
	mflo %dst
	add %dst,%dst,%y
	sll %dst,%dst,2
.end_macro

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

.macro inStack(%dst)
	sw %dst,0($sp)
	subi $sp,$sp,4
.end_macro

.macro outStack(%dst)
	addi $sp,$sp,4
	lw %dst,0($sp)
.end_macro	

.text
readInt($s0)	# $s0=n
readInt($s1)	# $s1=m

li $t7,0
read_for_i:
	beq $t7,$s0,read_for_i_end
	
	li $t8,0
	read_for_j:
		beq $t8,$s1,read_for_j_end
		
		getIndex($t0,$t7,$t8)
		readInt($t1)
		sw $t1,num($t0)
		sw $0,visited($t0)
		
		addi $t8,$t8,1
		j read_for_j
	read_for_j_end:
	
	addi $t7,$t7,1
	j read_for_i
read_for_i_end:

li $s2,0	#count=0
readInt($s3)	#begin.x
readInt($s4)	#begin.y
readInt($s5)	#end.x
readInt($s6)	#end.y
subi $a0,$s3,1
subi $a1,$s4,1
subi $a2,$s5,1
subi $a3,$s6,1

li $v0,0
jal dfs

printInt($v0)

li $v0, 10
syscall

#----dfs----
dfs:
bne $a0,$a2,not_return
	bne $a1,$a3,not_return
	addi $v0,$v0,1
	jr $ra
not_return:

getIndex($t0,$a0,$a1)
li $t1,1
sw $t1,visited($t0)

li $s7,2
li $t7,-1
dfs_for_i:
	beq $t7,$s7,dfs_for_i_end
	
	add $t0,$a0,$t7	#nowx+x
		
	bltz $t0,continue		#nowx+x<0
	bge $t0,$s0,continue	#nowx+x>=n
	
	getIndex($t2,$t0,$a1)
	lw $t3,visited($t2)
	lw $t4,num($t2)
		
	bnez $t3,not_dfs
		bnez $t4,not_dfs
		inStack($t7)
		inStack($t8)
		inStack($ra)
		inStack($a0)
		inStack($a1)
		move $a0,$t0
		jal dfs
		outStack($a1)
		outStack($a0)
		outStack($ra)
		outStack($t8)
		outStack($t7)
	not_dfs:	
	continue:
	addi $t7,$t7,1
	j dfs_for_i
dfs_for_i_end:

li $s7,2
li $t7,-1
dfs_for_j:
	beq $t7,$s7,dfs_for_j_end
	
	add $t1,$a1,$t7	#nowx+x
	
	bltz $t1,continue2		#nowy+y<0
	bge $t1,$s1,continue2	#nowy+y>=m
	
	getIndex($t2,$a0,$t1)
	lw $t3,visited($t2)
	lw $t4,num($t2)
		
	bnez $t3,not_dfs2
		bnez $t4,not_dfs2
		inStack($t7)
		inStack($t8)
		inStack($ra)
		inStack($a0)
		inStack($a1)
		move $a1,$t1
		jal dfs
		outStack($a1)
		outStack($a0)
		outStack($ra)
		outStack($t8)
		outStack($t7)
	not_dfs2:	
	continue2:
	addi $t7,$t7,1
	j dfs_for_j
dfs_for_j_end:

getIndex($t0,$a0,$a1)
sw $0,visited($t0)

jr $ra
