	.text
	.align	4
	.globl	z_trampo
	.type	z_trampo,@function
z_trampo:
	// x0 - entry point
	// x1 - stack
	// x2 - fini
        mov	sp, x1
	blr	x0
