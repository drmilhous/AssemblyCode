.data
format: .asciz "%d"
.text
.extern scanf

.global main
main:
	push	{fp, lr}
	mov fp, sp
	sub sp, sp, #4

	ldr r0, =format
	sub r1, fp, #4
	bl scanf

	ldr r0,[fp, #-4]
	cmp r0, #100
	bgt tgif 
	mov r1, #3
	udiv r0,r0,r1
	b done
tgif:
	mov r1, #2
	udiv r0,r0,r1
done:

	add sp,sp, #4
	pop	{fp, lr}
	bx lr
