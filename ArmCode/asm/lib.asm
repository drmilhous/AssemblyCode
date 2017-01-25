.data
.balign 4
printd : .asciz "%d\n" 
.balign 4
stringd: .asciz "%s"

.text
.global print_int
print_int:
	push {fp,lr}
	mov r1, r0
	ldr r0, =printd
	bl printf
	pop {fp,pc}
.global print_string
print_string:
	push {r0,r1,fp,lr}
	mov r1, r0
	ldr r0, =stringd
	bl printf	
	pop {r0,r1,fp, pc}
