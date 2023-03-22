	.text
	.align	4
	.globl	y_start
	.hidden	y_start
	.type	y_start,@function
y_start:
	// *sp		- argc
	// *sp + 1	- argv0
	// *sp + 2	- fini
	mov	x0, sp
	ldr     x1, [sp, #16]
  	bl	y_entry
