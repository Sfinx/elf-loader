	.text
	.globl	y_syscall
	.type	y_syscall,@function
y_syscall:
	mv  x5, a0
	mv  a0, a1
	mv  a1, a2
	mv  a2, a3
	mv  a3, a4
	mv  a4, a5
	mv  a5, a6
	mv  a6, a7
	mv  a7, x5
 	ecall
	ret
