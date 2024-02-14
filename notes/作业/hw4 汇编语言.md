**卞卓航 22373017**

## 第一题

1. 0010_0011

2. 15

3. 1101_1101

4. 132

5. 不溢出

6. FF88

7. 0x00012344   0x00012354

   ```mipsasm
   loop:lw $t0, 0($a0)	#将存储器中地址为4的内容加载到$t0寄存器中
   addi $a0, $a0, 4		#将$a0寄存器中存储的值加4，再存储到$a0存储器中
   andi $t1, $t0, 1		#将$t0寄存中存储的值和1做与运算，将结果存储到$t1寄存器中
   beqz $t1, loop			#如果$t1寄存器中存储的值为0，则跳转到loop标签对应的指令处
   ```

## 第二题

```mipsasm
00082021
34020004
0000000c
2108ffff
1500fffb
32f0ffc0
01f02025
a2c40004
0017b902
```

## 第三题

```mipsasm
.data
example100: .space 800

.text
li $s0,0
li $t7,0
li $t8 101

for_i:
	beq $t7,$t8,for_i_end
	
	sll $t0,$t7,2
	lw $t1,example100($t0)
	add $s0,$s0,$t1
	
	addi $t7,$t7,1
	j for_i
for_i_end:

sll $t7,$t0,2
lw $s0,example100($t7)
```

## 第四题

```mipsasm
.data
src: .space 800
dst: .space 800

.text
li $s0,0
li $t7,0
li $t8 101

for_i:
	beq $t7,$t8,for_i_end
	
	sll $t0,$t7,2
	lw $t1,src($t0)
	sw $t1,dst($t0)
	
	addi $t7,$t7,1
	j for_i
for_i_end:
```

## 第五题

```mipsasm
.data
.macro printInt(%dst)
	li $v0,1
	move $a0,%dst
	syscall
.end_macro

.text
li $a0,-1
jal my_abs

printInt($a0)

li $a0,1
jal my_abs

printInt($a0)

li $v0, 10
syscall

my_abs:
bgtz $a0,greater_zero
	nor $a0,$a0,$0
	addi $a0,$a0,1
greater_zero:
jr $ra
```

## 第六题

```mipsasm
.data
array: .space 400
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
li $t0,1
la $a1,array
sw $t0,0($a1)
sw $t0,4($a1)
readInt($a0)
move $s7,$a0

jal FIB

li $t7,0
for_j:
	bge $t7,$s7,for_j_end
	
	sll $t0,$t7,2
	lw $t1,array($t0)
	
	printInt($t1)
	printStr(str_enter)
	
	addi $t7,$t7,1
	j for_j
for_j_end:

li $v0,10
syscall


FIB:
li $t7,2
move $s0,$a1
for_i:
	bge $t7,$a0,for_i_end
	
	lw $t0,0($s0)
	lw $t1,4($s0)
	
	add $t2,$t0,$t1
	sw $t2,8($s0)
	
	addi $s0,$s0,4

	addi $t7,$t7,1
	j for_i
for_i_end:

jr $ra
```

## 第七题

```mipsasm
.data
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

.macro swap(%a1,%a2)
	move $t0,%a1
	move %a1,%a2
	move %a2,$t0
.end_macro

.text
readInt($a0)
readInt($a1)
readInt($a2)

jal my_sort

printInt($a0)
printStr(str_enter)
printInt($a1)
printStr(str_enter)
printInt($a2)
printStr(str_enter)

li $v0,10
syscall

my_sort:
blt $a1,$a2,not_swap_1
	swap($a1,$a2)
not_swap_1:

blt $a0,$a1,not_swap_2
	swap($a0,$a1)
not_swap_2:

blt $a1,$a2,not_swap_3
	swap($a1,$a2)
not_swap_3:

jr $ra
```

