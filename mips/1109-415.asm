.data
num: .space 4200
str_enter: .asciiz "\n"

.macro readInt(%dst)
	li $v0,5
	syscall
	move %dst,$v0
.end_macro 

.macro printInt(%dst)
	li $v0,1
	move $a0,%dst
	syscall
.end_macro

.macro printStr(%dst)
	li $v0,4
	la $a0,%dst
	syscall
.end_macro

.text
readInt($s0)	#read m

li $t7,0
read_for_i:
	beq $t7,$s0,read_for_i_end
	sll $t0,$t7,2
	readInt($t1)
	sw $t1,num($t0)
	addi $t7,$t7,1
	j read_for_i
read_for_i_end:

readInt($s1)	#read n
li $t7,0
search_for_i:
	beq $t7,$s1,search_for_i_end
	
	readInt($a0)	#read num
	jal binSearch
	
	addi $t7,$t7,1
	j search_for_i
search_for_i_end:

li $v0, 10
syscall

binSearch:
li $s2,0	#low=0
subi $s3,$s0,1	#high=m-1
li $s4,0	#flag
li $s5,2

while:
	blt $s3,$s2,while_end
	add $t0,$s2,$s3
	div $t0,$s5
	mflo $t0	# $t0=mid
	
	sll $t2,$t0,2
	lw $t1,num($t2)	# $t1=num[mid]
	
	beq $t1,$a0,find
	bgt $t1,$a0,greater
		addi $s2,$t0,1
		j while
	greater:
		subi $s3,$t0,1
		j while
	
	find:
		li $s4,1
		j while_end
while_end:

printInt($s4)
printStr(str_enter)
jr $ra