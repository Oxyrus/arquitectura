# Permite sumar a+b e imprime en pantalla
	.data

texto1:	.asciiz "Ingrese el valor de A \n"
texto2:	.asciiz "Ingrese el valor de B \n"
texto3:	.asciiz "El resultado es \n"
a:	.word 1

	.text
	
	la $a0, texto1
	li $v0,4 # Configura la operacion a ejecutar, siempre con $v0, 4 es para imprimir texto
	syscall
	li $v0,5 # 5 es para lectura desde la consola, el valor se guarda en la posicion $v0
	syscall
	move $t1,$v0 # mueve $v0 a $t1
	
	la $a0, texto2
	li $v0,4
	syscall
	li $v0,5
	syscall
	move $t2,$v0
	
	add $t0,$t1,$t2
	
	la $a0, texto3
	li $v0,4
	syscall
	move $a0,$t0
	li $v0,1
	syscall