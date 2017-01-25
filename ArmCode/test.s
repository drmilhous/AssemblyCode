.data
.balign 4
vara: .word 0x0000AABB
varb: .word 0x0000CCDD
format: .asciz "The value of r0 %08X r1 %08x r2 %08X varb %08X\n"
.text
.extern printf
.global main
main:
	push {fp,lr}
	sub sp, sp, #4
	mov r0, #1
	mov r1, #2
	mov r2, #0x1000
	mov r3, #4

	bl foo
	
	ldr r4, =varb
	ldr r3, [r4]
	str r3, [sp]
	mov r3, r2
	mov r2, r1
	mov r1, r0
	ldr r0, =format	
	bl printf
	add sp, sp, #4
	pop {fp, pc}


foo:
	ldr r0,=vara	
	ldr r1,[r0]
	add r1, r1,r2
	ldr r3, =varb
	str r1, [r3]
	mov r0, #0xAA
	mov r2, #0xBB
	bx lr
