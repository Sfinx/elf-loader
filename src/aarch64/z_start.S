	.text
	.align	4
	.globl	z_start
	.hidden	z_start
	.type	z_start,@function
z_start:
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
  	bl	z_entry
