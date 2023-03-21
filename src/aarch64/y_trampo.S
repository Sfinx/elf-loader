	.text
	.align	4
	.globl	y_trampo
	.type	y_trampo,@function
y_trampo:
	// x0 - entry point
	// x1 - stack
	// x2 - fini
        mov	sp, x1
	blr	x0
