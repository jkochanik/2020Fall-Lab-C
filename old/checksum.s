	.globl _Z8checkSumPKc
_Z8checkSumPKc:
	mov r2, #0
1:	
	ldrb	r1, [r0]
	add	r2, r1
	add	r0, #1
	cmp	r1, #0
	bne	1b

	mov	r3, #0xFF
	and	r0, r3, r2
	bx	lr
	
