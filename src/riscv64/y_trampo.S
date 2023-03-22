	.text
	.align	4
	.globl	y_trampo
	.type	y_trampo,@function
y_trampo:
	// a0 - entry point
	// a1 - stack
	// a2 - fini
        mv	sp, a1
	jr	a0
