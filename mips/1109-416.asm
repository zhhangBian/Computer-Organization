.data
str_enter: .asciiz "\n"
str_space: .asciiz " "

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
	la $a0,%dst
	li $v0,4
	syscall
.end_macro 

.macro get3(%dst)
	move $t7,%dst
	mult %dst,%dst
	mflo %dst
	mult %dst,$t7
	mflo %dst
.end_macro 

.text
readInt($s0)	#read m
readInt($s1)	#read n

li $s7,10
move $s2,$s0

for_i:
	beq $s2,$s1,for_i_end

	div $s2,$s7
	mflo $t3	#i/10
	mfhi $t0	#i%10
	div $t3,$s7	#i/100
	mfhi $t1	#i/10 %10
	div $t3,$s7
	mflo $t2	#i/100
	
	get3($t0)
	get3($t1)
	get3($t2)
	
	add $t0,$t0,$t1
	add $t0,$t0,$t2
	
	bne $t0,$s2,not_print
		printInt($s2)
		printStr(str_enter)
	not_print:
	
	addi $s2,$s2,1
	j for_i
for_i_end:

li $v0, 10
syscall
	
