.data
yes: .asciiz "1"
no: .asciiz "0"

.text
li $v0, 5
syscall

add $s0,$0,$v0
li $t0,4
li $t1,100
li $t2,400
li $s1,0

div_4:
	div $s0,$t0
	mfhi $t0
	beqz $t0,div_100
	j print_no
	
div_100:
	div $s0,$t1
	mfhi $t1
	beqz $t1,div_400
	j print_yes

div_400:
	div $s0,$t2
	mfhi $t2
	beqz $t2,print_yes

print_no:
	la  $a0, no
	li  $v0, 4
	syscall
	j end

print_yes:
	la  $a0, yes
	li  $v0, 4
	syscall

end:
	li $v0, 10
	syscall