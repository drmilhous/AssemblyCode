.data
format: .asciz "%d"
.text
.extern scanf
.extern printf
.global main
main:
	push	{fp, lr}
	mov fp, sp
	sub sp, sp, #8

	ldr r0, =format
	sub r1, fp, #4
	bl scanf

	ldr r0,[fp, #-4]

	str r0, [r2]

	ldr r1, [r2]
	ldr r0, =format
	bl printf

	add sp,sp, #8
	pop	{fp, lr}
	bx lr
