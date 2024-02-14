.data
num1: .space 600
num2: .space 600
num3: .space 600

str_space: .asciiz " "
str_enter: .asciiz "\n"

.macro getIndex(%dst,%n,%i,%j)
	mult %n,%i
	mflo %dst
	addu %dst,%dst,%j
	sll %dst,%dst,2
.end_macro

.macro readInt(%dst)
	li $v0 5
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
readInt($s0)	#read m1
readInt($s1)	#read n1
readInt($s2)	#read m2
readInt($s3)	#read n2

#read num1[m1][n1]
li $t6,0	#i=0
read1_for_i:
	beq $t6,$s0,read1_for_i_end	#i<m1
	
	li $t7,0	#j=0
	read1_for_j:
		beq $t7,$s1,read1_for_j_end	#j<n1
		
		readInt($t0)
		getIndex($t1,$s1,$t6,$t7)
		sw $t0,num1($t1)
		
		addi $t7,$t7,1
		j read1_for_j
	read1_for_j_end:
	
	addi $t6,$t6,1
	j read1_for_i
read1_for_i_end:

#read num2[m2][n2]
li $t6,0	#i=0
read2_for_i:
	beq $t6,$s2,read2_for_i_end	#i<m2
	
	li $t7,0	#j=0
	read2_for_j:
		beq $t7,$s3,read2_for_j_end	#j<n2
		
		readInt($t0)
		getIndex($t1,$s3,$t6,$t7)
		sw $t0,num2($t1)
		
		addi $t7,$t7,1
		j read2_for_j
	read2_for_j_end:
	
	addi $t6,$t6,1
	j read2_for_i
read2_for_i_end:

#initial num3
li $t6,0	#i=0
init_for_i:
	beq $t6,$s0,init_for_i_end	#i<m1
	
	li $t7,0	#j=0
	init_for_j:
		beq $t7,$s1,init_for_j_end	#j<n1
		
		getIndex($t1,$s1,$t6,$t7)
		sw $0,num3($t1)
		
		addi $t7,$t7,1
		j init_for_j
	init_for_j_end:
	
	addi $t6,$t6,1
	j init_for_i
init_for_i_end:

sub $s7,$s0,$s2
addi $s7,$s7,1
sub $a1,$s1,$s3
addi $a1,$a1,1

#compute num3
#num3[i][j]=\sum_p \sum_q num1[i+p][j+q]*num2[p][q]
li $t6,0
com_for_i:
	beq $t6,$s7,com_for_i_end
	
	li $t7,0
	com_for_j:
		beq $t7,$a1,com_for_j_end
			
			li $t8,0
			com_for_p:
				beq $t8,$s2,com_for_p_end
					
					li $t9,0
					com_for_q:
						beq $t9,$s3,com_for_q_end
						
						#num3[i][j]=\sum_p \sum_q num1[i+p][j+q]*num2[p][q]
						getIndex($s4,$s1,$t6,$t7)	#num3[i][j]
						getIndex($s5,$s3,$t8,$t9)	#num2[p][q]
						
						add $t0,$t6,$t8
						add $t1,$t7,$t9
						getIndex($s6,$s1,$t0,$t1)	#num1[i+p][j+q]
						
						lw $t0,num3($s4)	#num3[i][j]
						lw $t1,num2($s5)	#num2[p][q]
						lw $t2,num1($s6)	#num1[i+p][j+q]
						
						mult $t1,$t2
						mflo $t3
						add $t0,$t0,$t3		#num3[i][j]+=...	
						sw $t0,num3($s4)
						
						addi $t9,$t9,1
						j com_for_q
					com_for_q_end:
					
				addi $t8,$t8,1
				j com_for_p
			com_for_p_end:
		
		addi $t7,$t7,1
		j com_for_j
	com_for_j_end:
	
	addi $t6,$t6,1
	j com_for_i
com_for_i_end:

sub $s7,$s0,$s2
addi $s7,$s7,1
sub $a1,$s1,$s3
addi $a1,$a1,1

#print num3[m1][n1]
li $t6,0	#i=0
prt_for_i:
	beq $t6,$s7,prt_for_i_end	#i<m1
	
	li $t7,0	#j=0
	prt_for_j:
		beq $t7,$a1,prt_for_j_end	#j<n1
		
		getIndex($t1,$s1,$t6,$t7)
		lw $t0,num3($t1)
		printInt($t0)
		printStr(str_space)
		
		addi $t7,$t7,1
		j prt_for_j
	prt_for_j_end:
	
	printStr(str_enter)
	addi $t6,$t6,1
	j prt_for_i
prt_for_i_end:

li $v0, 10
syscall