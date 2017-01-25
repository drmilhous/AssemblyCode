.data
.balign 4
printd : .asciz "%d\n" 
.text
.global main
.global printf
.func main
main:
    push {lr}
    mov r0, #3      /* r0 ← 3 */
    mov r1, #4      /* r1 ← 4 */
    add r0, r0, r1  /* r0 ← r0 + r1 */
    bl print_int
    pop {lr}
    bx lr

print_int:
	push {fp,lr}
	mov r1, r0
	ldr r0, =printd
	bl printf
	pop {fp,pc}
