 .text
 .align 2
 .global main
 .func main
main:
cont .req r5

repite:	
	mov r0,sp
	bl mysrand
	mov cont,#2
ciclo:		bl myrand
		push {r0}
		mov r1,r0
		and r1,r1,#9 @para que genere numeros entre 0 y 9
		pop {r0}
		ldr r0,=formato
		bl printf
		# mov r1, r0
		#bl validar
		#mov r1, r2
		#ldr r0, =formato
		#bl printf
		subs cont, cont, #1
		bne ciclo

.unreq	cont
	mov r7,#1
	swi 0
	
 .data
 .align 2
formato: .asciz "%d\n"
mascara: .word 0xF




