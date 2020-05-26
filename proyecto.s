/* Pryecto asembler
Raul Jimenez 19017
Donaldo Garcia 19683
Alejandra Gudiel
Juego que consta en adivinar la palabra relacionada a dos imagenes
*/
.text
.align 2
.global main
.type main, %function
main:
	stmfd	sp!, {lr}
	
# imprime bienvenida
	ldr r1, =bienvenida
	ldr r0, =string
	bl printf
# pide la opcion
	ldr r0,=int
	ldr r1,=opcion
	bl scanf
# muestra la opcion eleguida
	/*ldr r1, =opcion
	ldr r1, [r1]
	ldr r0, =elegida
	bl printf*/
	
# Hace la comparacion para empezar el juego
	ldr r5, =opcion
	ldr r5, [r5]
	cmp r5, #1
	beq empezar
	bne salir


empezar:
	ldr r1, =empezarv
	ldr r0, =string
	bl printf
	
	#ciclo para el juego
	juego:
	
	#codido del random
	#
	#
	#
	#
	/*
	primeraOpcion:
	#M Muestra las 3 imagenes
		ldr r1, =primeraPalabra
		ldr r0, =string
		bl printf
		
		# Pide al usuario una respuesta
		ldr r1, =respuesta
		ldr r0, =string
		bl scanf
		
	# compara la respuesta para ver si es correcta
		ldr r5, =respuestaPrimerPalabra
		ldr r5, [r5]
		ldr r6, =respuesta
		ldr r6, [r6]
		cmp r6, r5
		beq correcto
		bne incorrecto
	
	
	segundaOpcion:
		#M Muestra las 3 imagenes
		ldr r1, =segundaPalabra
		ldr r0, =string
		bl printf
		
		# Pide al usuario una respuesta
		ldr r1, =respuesta
		ldr r0, =string
		bl scanf
		
	# compara la respuesta para ver si es correcta
		ldr r5, =respuestaSegundaPalabra
		ldr r5, [r5]
		ldr r6, =respuesta
		ldr r6, [r6]
		cmp r6, r5
		beq correcto
		bne incorrecto
	
	terceraOpcion:
		#M Muestra las 3 imagenes
		ldr r1, =terceraPalabra
		ldr r0, =string
		bl printf
		
		ldr r1, =terceraPalabra2
		ldr r0, =string
		bl printf
		
		# Pide al usuario una respuesta
		ldr r1, =respuesta
		ldr r0, =string
		bl scanf
	

	
	# compara la respuesta para ver si es correcta
		ldr r5, =respuestaTerceraPalabra
		ldr r5, [r5]
		ldr r6, =respuesta
		ldr r6, [r6]
		cmp r6, r5
		beq correcto
		bne incorrecto
	
	
	cuartaOpcion:
		#M Muestra las 3 imagenes
		ldr r1, =cuartaPalabra
		ldr r0, =string
		bl printf
		
		# Pide al usuario una respuesta
		ldr r1, =respuesta
		ldr r0, =string
		bl scanf
		
	# compara la respuesta para ver si es correcta
		ldr r5, =respuestaCuartaPalabra
		ldr r5, [r5]
		ldr r6, =respuesta
		ldr r6, [r6]
		cmp r6, r5
		beq correcto
		bne incorrecto


	quintaOpcion:
		#M Muestra las 3 imagenes
		ldr r1, =quintaPalabra
		ldr r0, =string
		bl printf
		
		ldr r1, =quintaPalabra2
		ldr r0, =string
		bl printf
		
		# Pide al usuario una respuesta
		ldr r1, =respuesta
		ldr r0, =string
		bl scanf
	

	
	# compara la respuesta para ver si es correcta
		ldr r5, =respuestaQuintaPalabra
		ldr r5, [r5]
		ldr r6, =respuesta
		ldr r6, [r6]
		cmp r6, r5
		beq correcto
		bne incorrecto
	
	
	sextaOpcion:
		#M Muestra las 3 imagenes
		ldr r1, =sextaPalabra
		ldr r0, =string
		bl printf
		
		# Pide al usuario una respuesta
		ldr r1, =respuesta
		ldr r0, =string
		bl scanf
		
	# compara la respuesta para ver si es correcta
		ldr r5, =respuestaSextaPalabra
		ldr r5, [r5]
		ldr r6, =respuesta
		ldr r6, [r6]
		cmp r6, r5
		beq correcto
		bne incorrecto
	
	septimaOpcion:
		#M Muestra las 3 imagenes
		ldr r1, =septimaPalabra
		ldr r0, =string
		bl printf
		
		ldr r1, =septimaPalabra2
		ldr r0, =string
		bl printf
		
		# Pide al usuario una respuesta
		ldr r1, =respuesta
		ldr r0, =string
		bl scanf
	

	octavaOpcion:
		#M Muestra las 3 imagenes
		ldr r1, =octavaPalabra
		ldr r0, =string
		bl printf
		
		# Pide al usuario una respuesta
		ldr r1, =respuesta
		ldr r0, =string
		bl scanf
		
	# compara la respuesta para ver si es correcta
		ldr r5, =respuestaOctavaPalabra
		ldr r5, [r5]
		ldr r6, =respuesta
		ldr r6, [r6]
		cmp r6, r5
		beq correcto
		bne incorrecto
	
	# compara la respuesta para ver si es correcta
		ldr r5, =respuestaSeptimaPalabra
		ldr r5, [r5]
		ldr r6, =respuesta
		ldr r6, [r6]
		cmp r6, r5
		beq correcto
		bne incorrecto

	novenaOpcion:
		#M Muestra las 3 imagenes
		ldr r1, =novenaPalabra
		ldr r0, =string
		bl printf
		
		# Pide al usuario una respuesta
		ldr r1, =respuesta
		ldr r0, =string
		bl scanf
		
	# compara la respuesta para ver si es correcta
		ldr r5, =respuestaNovenaPalabra
		ldr r5, [r5]
		ldr r6, =respuesta
		ldr r6, [r6]
		cmp r6, r5
		beq correcto
		bne incorrecto
	*/
	decimaOpcion:
		#M Muestra las 3 imagenes
		ldr r1, =decimaPalabra
		ldr r0, =string
		bl printf
		
		# Pide al usuario una respuesta
		ldr r1, =respuesta
		ldr r0, =string
		bl scanf
		
	# compara la respuesta para ver si es correcta
		ldr r5, =respuestaDecimaPalabra
		ldr r5, [r5]
		ldr r6, =respuesta
		ldr r6, [r6]
		cmp r6, r5
		beq correcto
		bne incorrecto
# revisa que la palabra que ingreso sea correcta	
	correcto:
		ldr r1, =correctov
		ldr r0, =string
		bl printf
		
#Revisa si la palabra que inregio es incorrecta
	incorrecto:
		ldr r1, =incorrectov
		ldr r0, =string
		bl printf
	
	
salir:
	ldr r1, =salidav
	ldr r0, =string
	bl printf

	@Salida
	mov r0,#0
	mov r3,#0
	ldmfd sp!,{lr}
	bx lr
	
# variables
.data
.align 2

correctov:					.asciz "Excelente has ganado 3 puntos.\n"
incorrectov:				.asciz "Que mal es incorrecto.\n"
respuesta: 					.asciz " "
empezarv:					.asciz "Excelente, que empiece el juego.\n"
salidav: 					.asciz "Gracias por eleguir este juego, hasta la proxima.\n"
int:						.asciz "%d"
elegida:					.asciz "La opcion eleguida es: %d \n"
string: 					.asciz "%s"
bienvenida:					.asciz "====================Bienvenidos al Juego====================\n1.Iniciar juego\n2.salir\n\t¿Que desea hacer?\n"
opcion:						.word 0

primeraPalabra:				.asciz "\tImagen 1\t\t imagen 2\t\timagen 3\n\t  __\n \t(@_ \t\t\t    (___()'`;	\t /\\_/\\ \n \t///_//\t\t\t   /,    /`	\t( o.o )\n \t<____)	\t\t     //’’--//	\t> ^ <\n\n \t\tMILANESA\n"
respuestaPrimerPalabra:		.asciz "ANIMALES"

segundaPalabra:				.asciz "\tImagen 1\t\t imagen 2\timagen 3\n  ,--./,-.   \t  // ‘’’’--.._         \t         _/-\_   \n / #      \  \t ||  (_)  _ ‘’-._   \t      .-`-:-:-`-. \n|          |  \t ||    _ (_)    '-. \t     /-:-:-:-:-:-\ \n \        /   \t ||   (_)   __..-' \t     \:-:-:-:-:-:/ \n  `._,._,'  \t  \\__..--‘’’’       \t      |`       `|   \n\t\tCADMIO\n"
respuestaSegundaPalabra:	.asciz "COMIDA"

terceraPalabra:				.asciz "\tImagen 1\t\t imagen 2\n  .-''''-.     \t     .-'  |         \n /,..___\       \t    /   <\|        \n() {_____}    \t   /     \'         \n  (/-@-@-\) \t   |_.- o-o      \n  {`-=^=-'}   \t   / C  -._)\     \n  {  `-'  }  \t  /',        |       \n   {     }   \t |   `-,_,__,'    \n    `---'   \t (,,)====[_]=|\n"
terceraPalabra2:			.asciz "Imagen 3\n__     _  __                                  \n| \__ `\O/  `--  {}    \}    {/              \n\    \_(~)/______/=____/=____/=* \n \=======/    //\\  >\/> || \>         \n----`---`---  `` `` ```` `` ``              \n\t\tVANIDAD\n"
respuestaTerceraPalabra:	.asciz "NAVIDAD"

cuartaPalabra: 				.asciz "\tImagen 1\t\t imagen 2\timagen 3\n  /| |\      \t     |   |   \t      |   |     \n ( \./ )   \t    ( \ / )   \t      (.\ /.)    \n  \ : /    \t    \\*//    \t     \   /      \n  ) : (    \t    ))*((   \t      ) . (    \n /  :  \   \t    ///|\\\   \t    /  v  |   \n |__:__| \t  ////|\\\\  \t   /.......|   \n\t\tDESVISTOS\n"
respuestaCuartaPalabra:		.asciz "VESTIDOS"

quintaPalabra:				.asciz "\tImagen 1\t\t imagen 2\n               \t         ________     _______\n /|     /|      \t   . - ~|        |-^-|        |~ - . \n  | _____|\t {      |          |   |         |      }\n   (_)-(_)  \t         `.____.'     `.____.'    \n"
quintaPalabra2:				.asciz "\timagen 3\n        _,--,            _      \n   __,-'____| ___      /' |\n /'   `\,--,/'   `\  /'   |       \n(       )  (       )'            \n \_   _/'  `\_   _/            \n   '''        '''               \n\t\tNELSET\n"
respuestaQuintaPalabra:		.asciz "LENTES"

sextaPalabra:				.asciz "\tImagen 1\t\t imagen 2\timagen 3\n   ___ ___\t    __   __    \t     __   __   \n /| |/|\| |\   \t  /| |/|\| |\     \t    /  `-'  |      \n/_| ´ |.` |_|\t /_|  o.o  |_|\t   / | R   | |    \n  |   |.  |    \t   | o`o´o |   \t  / /|  E  || |  \n  |   |.  |    \t   |  o^o  |   \t /_/ |   M | |_|\n  |___|.__|\t   |_______|\t     |_____|    \n\t\tMASCAIS\n"
respuestaSextaPalabra:		.asciz "CAMISAS"

septimaPalabra:				.asciz "\tImagen 1\t\t imagen 2\n  ______     \t   _/\______\\__\n /|_||_\`.__  \t / ,-. -|-  ,-.`-.     \n(   _    _ _\  \t `( o )----( o )-'  \n=`-(_)--(_)-' \t    `-'      `-'       \n"
septimaPalabra2:			.asciz "Imagen 3\n     ______             \n         //  ||\ \              \n _____//___||_\ \___     \n )  _          _    \            \n |_/ \________/ \___|    \n___\_/________\_/____\n\t\tCORAR\n"
respuestaSeptimaPalabra:	.asciz "CARRO"

octavaPalabra:				.asciz "Imagen 1\timagen 2\timagen 3\n     ()=() \t  ()-()  \t ()=()   \t ()-()     \n     ('Y') \t    (':')  \t (^;^)   \t  ('&')    \n     q . p \t  d . b \t  C   C\t   c . c   \n     ()_() \t  ()_()  \t ()_()   \t  ()=()   \n\t\tMO.ROS\n"
respuestaOctavaPalabra:		.asciz "MR.OSO"

novenaPalabra:				.asciz "Imagen 1\timagen 2\timagen 3\n    __( )_  \t  _( )__( )_  \t  _( )__( )__ \n   '--. .--. \t  .--. .--. .- \t  -. .--'         \n     / _ \  \t / _ \/ _ \     \t / _ \/ _ \       \n     (/ \) \t (/ \)(/ \)     \t (/ \)(/ \)          \n\t\tLODLS\n"
respuestaNovenaPalabra:		.asciz "DOLLS"

decimaPalabra:				.asciz "Imagen 1\timagen 2\timagen 3\n|\\---/|   \t   /\\_/\\ \t     /\\_/\\     \n| o_o |  \t ( o.o ) \t    ( o o )    \n \\_^_/  \t  > ^ < \t    ==_Y_==  \n           \t            \t      `-'       \n\t\tTOGA\n"
respuestaDecimaPalabra: 	.asciz "GATO"
