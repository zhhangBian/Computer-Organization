.data
matrix: .space  10000	# int matrix[50][50]   64*64*4 字节
                                	# matrix[0][0] 的地址为 0x00，matrix[0][1] 的地址为 0x04，……
                                	# matrix[1][0] 的地址为 0x20，matrix[1][1] 的地址为 0x24，……
                                	# ……
str_enter:  .asciiz "\n"
str_space:  .asciiz " "

# 这里使用了宏，%i 为存储当前行数的寄存器，%j 为存储当前列数的寄存器
# 把 (%i * 8 + %j) * 4 存入 %ans 寄存器中
.macro  getindex(%ans, %i, %j)
	mul %ans,%i,50		# %ans = %i * 50
	add %ans, %ans, %j		# %ans = %ans + %j
	sll %ans, %ans, 2 		# %ans = %ans * 4
.end_macro

.macro print_data(%num)
	add $a0,%num,$0
	li  $v0, 1
	syscall		#打印数据
.end_macro

.macro print_str(%str)
	la  $a0, %str
	li  $v0, 4
	syscall		# 输出一个str
.end_macro

.text
#读取行数m，列数n
li  $v0, 5
syscall
move $s0, $v0		# 读取行数n

li  $v0, 5
syscall
move $s1, $v0		# 读取列数m

#输入部分
li $t0,0			# 外层循环i
for_i:
	beq $t0,$s0,end_for_i
	
	li $t1,0
	for_j:
		beq $t1,$s1,end_for_j
		
		li  $v0, 5
		syscall	#读入一个数
		getindex($t2, $t0, $t1)         	# 获取存储位置($t0 * 8 + $t1) * 4，存储在$t2
		sw  $v0, matrix($t2)            	# matrix[$t0][$t1] = $v0
		
		addi $t1,$t1,1
		j for_j
	end_for_j:

	addi $t0,$t0,1
	j for_i

end_for_i:

# 输出部分
add $t0,$s0,$0
for_p:
	beqz $t0,end_for_p
	
	add $t1,$s1,$0
	for_q:
		beqz $t1,end_for_q
		
		subi $t5,$t0,1
		subi $t6,$t1,1
		getindex($t2, $t5, $t6)	# 计算地址，得到偏移量$t2
		lw  $t3, matrix($t2)        	# 读取数据到$a0 = matrix[$t0][$t1]
		
		beqz $t3,not_print
		
		print_data($t0)
		print_str(str_space)
		
		print_data($t1)
		print_str(str_space)
		
		print_data($t3)
		print_str(str_enter)
		
		not_print:			#跳过打印部分
		subi $t1,$t1,1
		j for_q
	end_for_q:
	
	subi $t0,$t0,1
	j for_p
end_for_p:

end:

li $v0,10
syscall