.data
num1: .space 300
num2: .space 300
num3: .space 300
str_space: .asciiz " "
str_enter: .asciiz "\n"

.macro getIndex(%dst,%row,%i,%j)
	mult %row,%i
	mflo %dst
	addu %dst,%dst,%j
	sll %dst,%dst,2
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

.text
readInt($s0)	#read n

#read num1[][]
li $t7,0	#i
read1_for_i:
	beq $t7,$s0,read1_for_i_end	#i<n
	
	li $t8,0	#j
	read1_for_j:
		beq $t8,$s0,read1_for_j_end	#j<n
		
		readInt($t0)	#read num1[i][j] to $t0
		getIndex($t1,$s0,$t7,$t8)
		sw $t0,num1($t1)
		
		addi $t8,$t8,1
		j read1_for_j
	read1_for_j_end:

	addi $t7,$t7,1
	j read1_for_i
read1_for_i_end:

#read num2[][]
li $t7,0	#i=0
read2_for_i:
	beq $t7,$s0,read2_for_i_end	#i<n
	
	li $t8,0	#j=0
	read2_for_j:
		beq $t8,$s0,read2_for_j_end	#j<n
		
		readInt($t0)	#read num2[i][j] to $t0
		getIndex($t1,$s0,$t7,$t8)
		sw $t0,num2($t1)
		
		addi $t8,$t8,1
		j read2_for_j
	read2_for_j_end:

	addi $t7,$t7,1
	j read2_for_i
read2_for_i_end:

#initial num3[n][n]
li $t7,0	#i=0
ini_for_i:
	beq $t7,$s0,ini_for_i_end	#i<n
	
	li $t8,0	#j=0
	ini_for_j:
		beq $t8,$s0,ini_for_j_end	#j<n
		
		getIndex($t1,$s0,$t7,$t8)
		sw $0,num3($t1)
		
		addi $t8,$t8,1
		j ini_for_j
	ini_for_j_end:

	addi $t7,$t7,1
	j ini_for_i
ini_for_i_end:

#cumpute
#num3[i][j]=sum(num1[i][k]*num2[k][j])
li $t7,0	#i=0
com_for_i:
	beq $t7,$s0,com_for_i_end
	
	li $t8,0	#j=0
	com_for_j:
		beq $t8,$s0,com_for_j_end
		
		li $t9,0	#k=0
		com_for_k:
			beq $t9,$s0,com_for_k_end
			
			getIndex($t0,$s0,$t7,$t9)	#num1[i][k]
			getIndex($t1,$s0,$t9,$t8)	#num2[k][j]
			lw $s1,num1($t0)
			lw $s2,num2($t1)
			
			mult $s1,$s2	#num1[i][k]*num2[k][j]
			mflo $s1		#store to $s1
			
			getIndex($t0,$s0,$t7,$t8)	#num2[i][j]
			lw $s2,num3($t0)
			addu $s1,$s1,$s2	#num3[i][j]+=s1
			sw $s1,num3($t0)
			
			addi $t9,$t9,1	#k++
			j com_for_k
		com_for_k_end:
		
		addi $t8,$t8,1
		j com_for_j
	com_for_j_end:
	
	addi $t7,$t7,1
	j com_for_i
com_for_i_end:

#print num3[n][n]
li $t7,0	#i=0
prt_for_i:
	beq $t7,$s0,prt_for_i_end	#i<n
	
	li $t8,0	#j=0
	prt_for_j:
		beq $t8,$s0,prt_for_j_end	#j<n
		
		getIndex($t1,$s0,$t7,$t8)
		lw $t2,num3($t1)
		li $v0,1
		move $a0,$t2
		syscall
		printStr(str_space)
		
		addi $t8,$t8,1
		j prt_for_j
	prt_for_j_end:

	printStr(str_enter)
	addi $t7,$t7,1
	j prt_for_i
prt_for_i_end: