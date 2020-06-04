/* Villena, A. & Asenjo, R. & Corbera, F.
Practicas basadas en Raspberry Pi */
/* Raul Jimenez 19017
Donaldo Garcia 19683
Alejandra Gudiel 19232
programa de subfunciones para hacer el numero random
*/

.data
seed: 		.word 	1
const1:		.word	1103515245
const2:		.word	12345
formato: .asciz "%d\n"
cont:		.word 0
numeros:	.word 0,0,0,0,0,0

.text
.global myrand, mysrand, anadir, validar

#Raul Jimenez modificaciones del original
myrand:
	ldr r1, =seed	@puntero a semilla
	ldr r0, [r1]	@leer valor
	ldr r2, [r1,#4]	@leer const1
	mul r3, r0, r2	@r3=seed*1103515245
	ldr r0, [r1,#8]	@leer const2
	add r0, r0, r3	@r0=r3+12345
	str r0, [r1]	@guardo en variable seed
	lsl r0, #1	@devuelve seed>>16&0x7FFF
	lsr r0, #17
	mov pc, lr

# Alejandra Gudiel
mysrand:
	ldr r1, =seed
	str r0, [r1]
	mov pc, lr


# Raul Jimenez 
anadir:
	and r1,r1,#9
	ldr r9, =cont
	ldr r10, =numeros
	ldr r9, [r9]
	add r10, r9
	str r1, [r10]
	add r9, #4
	ldr r0, =formato
	bl printf
	mov pc, lr

validar:
	mov r9,#0 @contador posicion
	mov r11,#0 @contador del ciclo
	mov r12,#0 @para colocar el numer oen el vector al final
	mov r2,#0 @boolean para saber si es valido, 1 si es valido 0 no es valido y manda a buscar otro
	mov r3,#0
	ldr r1,=seed
	ldr r1,[r1]
	and r1,r1,#9 @para que genere numeros entre 0 y 9
	ldr r6, =numeros
	ldr r9,=dondeQuede
	ldr r9,[r9]
	ldr r0,	=formato
	bl printf

revisar:
	ldr r2,[r6],#4		
	add r11,r11,#1
	cmp r2, r1
	beq igual
	cmp r11,#10
	bne revisar
	b agregar 
igual:
	mov r2, #0
	mov r1, #0
	mov r11, #0
	b myrand
agregar:
	ldr r0,	=prueba
	bl printf

	str r1,[r6],r9 
	add r9, r9, #4
	ldr r8,=dondeQuede
	str r9, [r8]

	mov r0, r1
	ldr r2,	=formato
	bl printf
	
	mov pc, lr

		
	

	