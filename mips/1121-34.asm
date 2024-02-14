.data
str: .space 200

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

.text
readInt($s0)	#read n

li $t7,0	#i=0
read_for_i:
	beq $t7,$s0,read_for_i_end
	
	readChar($t0)	#read str[i]
	sll $t1,$t7,2

	sw $t0,str($t1)
	
	addi $t7,$t7,1
	j read_for_i
read_for_i_end:

# $s1=n/2
li $t0,2
div $s0,$t0
mflo $s1

li $s2,1	#flag=1
li $t7,0	#i=0
subu $t8,$s0,1	#n-1
for_i:
	beq $t7,$s1,for_i_end	#i<n/2
	
	sll $t3,$t7,2
	sll $t4,$t8,2
	lb $t1,str($t3)
	lb $t2,str($t4)
	
	beq $t1,$t2,equal	# if str[i]==str[n-1-i]
		li $s2,0
	equal:

	addi $t7,$t7,1
	subi $t8,$t8,1
	j for_i
for_i_end:

li $v0,1
move $a0,$s2
syscall
