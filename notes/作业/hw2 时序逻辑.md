**卞卓航 22373017**

## 填空题

1. RS锁存器、D锁存器、JK寄存器
2. $\overline{R}+\overline{S}=1$
3. $Q_{n+1}=J\overline{Q_n}+\overline{K}Q_n$
4. 同步 异步
5. n
6. 反馈复位法 预置法
7. 100
8. 256

## 选择题

1. C
2. D
3. B
4. D
5. 2
6. 4
7. 2
8. 2
9. 4
10. 2
11. 4
12. 1

## 分析与设计题

### 1

FF1是由与非门构成的RS触发器，在起输入端口对输入信号进行取反，$R=\overline{A},S=\overline{B}$。由RS触发器的基本性质，其不允许同时输入1，反应在输入端口AB上就是不允许同时输入0。

- 当A=0，B=0，为非法输入，由于不清楚内部构造，不清楚门的传输延迟，当AB由0变1时输出信号不确定
- 当A=0，B=1，实际输入S=1，R=0，输出Q=1
- 当A=1，B=0，实际输入S=0，R=1，输出Q=0
- 当A=1，B=1，实际输入S=0，R=0，输出保持，取决于上一个状态的输出

FF2是由或非门构成的RS触发器，在真值表上与基本RS触发器表现一致，AB的输入信号就是RS的实际输入信号。

- 当A=0，B=0，输出保持，取决于上一个状态的输出
- 当A=0，B=1，输出Q=0
- 当A=1，B=0，输出Q=1
- 当A=1，B=1，为非法输入，由于不清楚内部构造，不清楚门的传输延迟，当AB由1变0时输出信号不确定

画出波形：

![image-20231005144405305](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310051444557.png)

### 2

可得到相应的状态转移方程：$D_1=\overline{Q_{3n}},D_2=Q_{1n},D_3=Q_{1n}Q_{2n},C=\overline{\overline{Q_{1n}}Q_{3n}}$

D锁存器均为电平敏感，在CP为高电平时Q更新为输入的D值，故可以得到下表：

| 状态 | $Q_{3n}$ | $Q_{2n}$ | $Q_{1n}$ | $Q_{3n+1}$ | $Q_{2n+1}$ | $Q_{1n+1}$ | C    |
| ---- | -------- | -------- | -------- | ---------- | ---------- | ---------- | ---- |
| S0   | 0        | 0        | 0        | 0          | 0          | 1          | 1    |
| S1   | 0        | 0        | 1        | 0          | 1          | 1          | 1    |
| S2   | 0        | 1        | 0        | 0          | 0          | 1          | 1    |
| S3   | 0        | 1        | 1        | 1          | 1          | 1          | 1    |
| S4   | 1        | 0        | 0        | 0          | 0          | 0          | 0    |
| S5   | 1        | 0        | 1        | 0          | 1          | 0          | 1    |
| S6   | 1        | 1        | 0        | 0          | 0          | 0          | 0    |
| S7   | 1        | 1        | 1        | 1          | 1          | 0          | 1    |

状态转移图为：

![image-20231005112123192](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310051121289.png)

时序图为：

![image-20231005112720287](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310051127425.png)

电路特点：

- 是一个五进制加法器
- 具有自启动和纠正功能，没有死循环
- 仅用到了三个D触发器，电路简单

### 3

![image-20231005142006312](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310051420401.png)

### 4

改状态机的输出、状态与输入无关，只与上一个状态有关，故为Moore型状态机

```verilog
`timescale 1ns / 1ps

`define S0 3'b010
`define S1 3'b011
`define S2 3'b111
`define S3 3'b110
`define S4 3'b100
`define S5 3'b000

module test(
    input clk,
    output reg out
    );
reg [2:0] status;

always @(posedge clk) begin
  case (status)
    `S0: status <= `S1;
    `S1: status <= `S2;
    `S2: status <= `S3;
    `S3: status <= `S4;
    `S4: status <= `S5;
    `S5: status <= `S0;
    default status <=`S0;
  endcase

  if(status == `S5)
    out=1;
  else
    out=0;
end

endmodule
```

下位修改程序填空：

```verilog
[2:0]
if(q==st5) cout=1;
else cout=0;
```

### 5

图片地址为：https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310051434851.png

![image-20231005143445516](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310051434851.png)

### 6

状态机为：（图片地址为：https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310051359199.png）

![image-20231005135928059](https://pigkiller-011955-1319328397.cos.ap-beijing.myqcloud.com/img/202310051359199.png)

有状态转移表格：

| 状态编号 | 状态（Q2Q1Q0） | 输入I | 下一个状态编号 | 下一个状态（Q’2Q’1Q’0） | 输出（O1O0） |
| -------- | -------------- | ----- | -------------- | ----------------------- | ------------ |
| S0       | 000            | 0     | S1             | 001                     | 00           |
| S0       | 000            | 1     | S2             | 010                     | 00           |
| S1       | 001            | 0     | S2             | 010                     | 00           |
| S1       | 001            | 1     | S3             | 100                     | 00           |
| S2       | 010            | 0     | S3             | 011                     | 00           |
| S2       | 010            | 1     | S4             | 100                     | 00           |
| S3       | 011            | 0     | S4             | 100                     | 00           |
| S3       | 011            | 1     | S5             | 101                     | 00           |
| S4       | 100            | x     | S0             | 000                     | 01           |
| S5       | 101            | x     | S0             | 000                     | 11           |

则有每一位编码的逻辑函数表达式：

Q’0 = (~Q2 ~Q1 ~Q0 ~I) + (~Q2 Q1 ~Q0 ~I) + (~Q2 Q1 Q0 I)

Q’1 = (~Q2 ~Q1 ~Q0 I) + (~Q2 ~Q1 Q0 ~I) + (~Q2 Q1 ~Q0 ~I)

Q’2 = (~Q2 Q1 ~Q0 I) + (~Q2 Q1 Q0 ~I) + (~Q2 Q1 Q0 I)

输出逻辑函数表达式为：

I0 = Q2 ~Q1 ~Q0 + Q2 ~Q1 Q0

I1 = Q2 ~Q1 Q0
