# User space ABI:   rdi, rsi, rdx, rcx, r8, r9, the rest args on the stack
# Kernel spaceABI:  rax (nsys), rdi, rsi, rdx, r10, r8, r9 (stack pointer)
	.text
	.align	4
	.globl	y_syscall
	.type	y_syscall,@function
y_syscall:
	mov	%rdi, 	%rax
	mov	%rsi, 	%rdi
	mov	%rdx, 	%rsi
	mov	%rcx, 	%rdx
	mov	%r8,  	%r10
	mov	%r9,  	%r8
	mov	8(%rsp),%r9
	syscall
	ret

