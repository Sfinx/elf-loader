	.text
	.align	4
	.globl	y_trampo
	.type	y_trampo,@function
y_trampo:
	mov	%rsi,	%rsp
	jmp	*%rdi
	/* Should not reach. */
	hlt

