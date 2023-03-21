	.text
	.align	4
	.globl	y_start
	.hidden	y_start
	.type	y_start,@function
y_start:
	// *sp		- argc
	// *sp + 1	- argv0
	// *sp + 2	- argv1
	// 		- 0x0000
	// *sp + n	- envp

	// x0 - ?
	// x1 - ?
	// x2 - ?
	// x3 - envp

	mov	x0, sp
	ldp     x1, x2, [sp]
  	bl	y_entry
