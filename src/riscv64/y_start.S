	.text
	.align	4
	.globl	y_start
	.hidden	y_start
	.type	y_start,@function
y_start:
	// *sp		- argc
	// *(sp + 1)	- argv0
	// *(sp + 2)	- fini
	// a0 - sp
	// a1 - fini
	mv	a0, sp
	ld      a1, 16(sp)
	call	y_entry
