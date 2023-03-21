	.text
	.globl	y_start
	.hidden	y_start
	.type	y_start,@function
y_start:
	mov	%esp,	%eax
	push	%edx
	push	%eax
	call	y_entry
	hlt

