	.global main
_Z6setBitii:
	mov	r2, #1		@1 in r2
	lsl	r2, r2, r1	@left shift r2(#1) by r1
	orr	r0, r0, r2	@or r0 with r2
	bx	lr		@branch out

_Z8clearBitii:
	mov	r2, #1		@1 in r2
	lsl	r2, r2, r1	@r2 << r1
	mov	r1, #0xFFFFFFFF	@111111... into r1
	eor	r1, r1, r2	@r1 = r1 ^ r2
	and	r0, r0, r1	@r0 = r0 & r1
	bx	lr

_ZBreplaceBitsiii:
	and	r0, r0, r1
	orr	r0, r1, r2
	bx	lr

_ZAbuildColoriii:
	lsl	r0, #16
	lsl	r1, #8
	orr	r0, r0, r1
	orr	r0, r0, r2
	bx	lr
