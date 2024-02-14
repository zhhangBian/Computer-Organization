**卞卓航 22373017**

## 一、填空题

1. 导通 截止

2. 关态 高电平

   开态 低电平

3. 3.0V 0.3V

4. ECL TTL CMOS

   CMOS TTL ECL

   CMOS TTL ECL

5. 0、1

6. $(A+B)( \overline{C}+ \overline{D})$

   $AB+\overline{C} \overline{D}$

7. $A\overline{B}+AC+\overline{C}D$

8. 环路 存储电路 输入

9. 编码

10. 译码 n $2^n$

11. 1111110111

## 二、选择题

1. 2
2. 4
3. 2
4. 4
5. 1
6. 2
7. 3
8. 3
9. 3
10. 2
11. 4

## 三、问答与计算

### 1

![image-20231001113617674](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310011136840.png)

### 2

![image-20231001113648310](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310011136501.png)

### 3

![image-20231001113709183](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310011137458.png)

代码为：

```verilog
`timescale 1ns / 1ps

module test(
    input A,
    input B,
    input C,
    output D
    );
	 
assign D=(A&&B)||(A&&C)||(B&&C);

endmodule
```

### 4

![image-20231001113803840](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310011138008.png)

### 5

需要使用四片8选1数据选择器，一个19输入与门

对于控制信号D31-D0：选择为：11010101_10111010_01100101_10011110

![image-20231001133813161](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310011338466.png)

### 6

（1）

按照真值表生成了该电路

<img src="https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310011147069.png" alt="image-20231001114728989" style="zoom: 50%;" />

（2）

在（1）中真值表的基础上修改得到了该电路，真值表为：

| A    | B    | CI   | Sum  | Carry |
| ---- | ---- | ---- | ---- | ----- |
| 00   | 00   | 0    | 00   | 0     |
| 00   | 00   | 1    | 01   | 0     |
| 00   | 01   | 0    | 01   | 0     |
| 00   | 01   | 1    | 10   | 0     |
| 00   | 10   | 0    | 10   | 0     |
| 00   | 10   | 1    | 00   | 1     |
| 01   | 00   | 0    | 01   | 0     |
| 01   | 00   | 1    | 10   | 0     |
| 01   | 01   | 0    | 10   | 0     |
| 01   | 01   | 1    | 00   | 1     |
| 01   | 10   | 0    | 00   | 1     |
| 01   | 10   | 1    | 00   | 1     |
| 10   | 00   | 0    | 10   | 0     |
| 10   | 00   | 1    | 00   | 1     |
| 10   | 01   | 0    | 00   | 1     |
| 10   | 01   | 1    | 01   | 1     |
| 10   | 10   | 0    | 01   | 1     |
| 10   | 10   | 1    | 10   | 1     |

电路图图片地址：https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310011157782.png

![image-20231001115742714](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310011157782.png)

### 7

给出真值表

| x3   | x2   | x1   | x0   | a    | b    | c    | d    | e    | f    | g    | 显示 |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| 0    | 0    | 0    | 0    | 1    | 1    | 1    | 1    | 1    | 1    | 0    | 0    |
| 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 1    | 1    | 0    | 1    |
| 0    | 0    | 1    | 0    | 1    | 0    | 1    | 1    | 0    | 1    | 1    | 2    |
| 0    | 0    | 1    | 1    | 1    | 0    | 0    | 1    | 1    | 1    | 1    | 3    |
| 0    | 1    | 0    | 0    | 0    | 1    | 0    | 0    | 1    | 1    | 1    | 4    |
| 0    | 1    | 0    | 1    | 1    | 1    | 0    | 1    | 1    | 0    | 1    | 5    |
| 0    | 1    | 1    | 0    | 1    | 1    | 1    | 1    | 1    | 0    | 1    | 6    |
| 0    | 1    | 1    | 1    | 1    | 0    | 0    | 0    | 1    | 1    | 0    | 7    |
| 1    | 0    | 0    | 0    | 1    | 1    | 1    | 1    | 1    | 1    | 1    | 8    |
| 1    | 0    | 0    | 1    | 1    | 1    | 0    | 1    | 1    | 1    | 1    | 9    |
| 1    | 0    | 1    | 0    | 1    | 1    | 1    | 0    | 1    | 1    | 1    | a    |
| 1    | 0    | 1    | 1    | 0    | 1    | 1    | 1    | 1    | 0    | 1    | b    |
| 1    | 1    | 0    | 0    | 1    | 1    | 1    | 1    | 0    | 0    | 0    | c    |
| 1    | 1    | 0    | 1    | 0    | 0    | 1    | 1    | 1    | 1    | 1    | d    |
| 1    | 1    | 1    | 0    | 1    | 1    | 1    | 1    | 0    | 0    | 1    | e    |
| 1    | 1    | 1    | 1    | 1    | 1    | 1    | 0    | 0    | 0    | 1    | f    |

逻辑表达式为：

a = ~x2 ~x0 + ~x3 x1 + ~x3 x2 x0 + x2 x1 + x3 ~x2 ~x1 + x3 ~x0

b = ~x1 ~x0 + ~x3 x2 ~x1 + x2 ~x0 + x3 ~x2 + x3 x1

c = ~x2 ~x0 + x1 ~x0 + x3 x1 + x3 x2

d =~x3 ~x2 ~x0 + ~x2 x1 x0 + x2 ~x1 x0 + x2 x1 ~x0 + x3 ~x1

e = ~x3 ~x1 + ~x3 x0 + ~x1 x0 + ~x3 x2 + x3 ~x2

f = ~x3 ~x2 + ~x3 ~x1 ~x0 + ~x2 ~x0 + ~x3 x1 x0 + x3 ~x1 x0

g = ~x2 x1 + x1 ~x0 + ~x3 x2 ~x1 + x3 ~x2 + x3 x0

电路为：（图片地址：https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310011309836.png）

![image-20231001130925775](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310011309836.png)

`verilog`代码为：

```verilog
`timescale 1ns / 1ps

module test(
    input [3:0] x,
    output a,b,c,d,e,f,g
    );
	 
assign x3=x[3];
assign x2=x[2];
assign x1=x[1];
assign x0=x[0];

assign a = !x2 && !x0 + !x3 && x1 + !x3 && x2 && x0 + x2 && x1 + x3 && !x2 && !x1 + x3 && !x0;
assign b = !x1 && !x0 + !x3 && x2 && !x1 + x2 && !x0 + x3 && !x2 + x3 && x1;
assign c = !x2 && !x0 + x1 && !x0 + x3 && x1 + x3 && x2;
assign d =!x3 && !x2 && !x0 + !x2 && x1 && x0 + x2 && !x1 && x0 + x2 && x1 && !x0 + x3 && !x1;
assign e = !x3 && !x1 + !x3 && x0 + !x1 && x0 + !x3 && x2 + x3 && !x2;
assign f = !x3 && !x2 + !x3 && !x1 && !x0 + !x2 && !x0 + !x3 && x1 && x0 + x3 && !x1 && x0;
assign g = !x2 && x1 + x1 && !x0 + !x3 && x2 && !x1 + x3 && !x2 + x3 && x0;

endmodule
```
