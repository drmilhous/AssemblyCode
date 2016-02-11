%include "asm_io.inc"
segment .data 
prompt: db "Enter a number",0
winner: db "Winner winner chicken dinner",10,0
notwinner: db "Sorry Charlie",10,0
segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	;***************CODE STARTS HERE***************************
	;print the prompt
	mov eax, prompt
	call print_string
	
	;read the number
	call read_int

	;check if it is between 100 and 200
	cmp eax, 100
	jl theNotBetween
	cmp eax, 200
	jg theNotBetween
	mov eax, winner
	call print_string
	jmp allDone	

theNotBetween:
	mov eax, notwinner
	call print_string	
	
allDone:
	
	;***************CODE ENDS HERE*****************************
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
