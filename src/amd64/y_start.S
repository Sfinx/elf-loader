	.text
	.align	4
	.globl	y_start
	.hidden	y_start
	.type	y_start,@function
y_start:
	mov	%rsp,	%rdi
	mov	%rdx,	%rsi
	call	y_entry
	hlt

