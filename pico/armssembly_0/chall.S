	.arch armv8-a
	.file	"chall.c"
	.text
	.align	2
	.global	func1
	.type	func1, %function
func1:
	sub	sp, sp, #16 ; sp -= 16
	str	w0, [sp, 12] ; w0 = [sp + 12]
	str	w1, [sp, 8] ; w1 = [sp + 8]
	ldr	w1, [sp, 12] ; [sp + 12] = w1
	ldr	w0, [sp, 8] ; [sp + 8] = w0
	cmp	w1, w0
	bls	.L2 ; jump if lower or same
	ldr	w0, [sp, 12] ; [sp + 12] = w0 | reset [sp + 12]
	b	.L3 ; jump
.L2:
	ldr	w0, [sp, 8] ; [sp + 8] = w0
.L3:
	add	sp, sp, 16 ; sp += 16
	ret
	.size	func1, .-func1
	.section	.rodata
	.align	3
.LC0:
	.string	"Result: %ld\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -48]! ; [sp - 48, sp - 48] = x29, x30
	add	x29, sp, 0 ; x29 = sp
	str	x19, [sp, 16] ; x19 = [sp + 16] arg 1 (266134863)
	str	w0, [x29, 44] ; w0 = [sp + 44] arg 2(1592237099)
	str	x1, [x29, 32] ; x1 = [sp + 32]
	ldr	x0, [x29, 32] ; [sp + 32] = x0
	add	x0, x0, 8 ; x0 += 8
	ldr	x0, [x0] ; x0 = [x0]
	bl	atoi ; string to int
	mov	w19, w0 ; set w19 to result
	ldr	x0, [x29, 32] ; [x29 + 32] = w0
	add	x0, x0, 16 ; x0 += 16
	ldr	x0, [x0] ; [x0] = x0
	bl	atoi ; string to int
	mov	w1, w0 ; w1 = w0
	mov	w0, w19 ; w0 = w19
	bl	func1 ; call func1
	mov	w1, w0 ; w1 = w0
	adrp	x0, .LC0 ; x0 = address of .LC0
	add	x0, x0, :lo12:.LC0 ; x0 += low12 bits of address of .LC0
	bl	printf ; print Result: x1
	mov	w0, 0 ; w0 = 0
	ldr	x19, [sp, 16] ; [sp + 16] = x19
	ldp	x29, x30, [sp], 48 ; 
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
