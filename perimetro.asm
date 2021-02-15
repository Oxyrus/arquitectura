# Arquitectura MIPS
	.data
	
pi: 	.float	3.1415 # tambien podria ser double, que es precision doble
dos:	.float	2.0

	.text
	
	li $v0,6 # 5 es para lectura desde la consola, el valor se guarda en la posicion $f0
	syscall
	
	l.s	$f2, pi # Carga pi en $f2
	l.s	$f4, dos # Carga dos en $f4
	mul.s	$f6, $f4, $f2 # Multiplica $f2 y $f4, lo almacena en $f6
	
	mul.s	$f12, $f6, $f0 # Multiplica $f6 y $f0, lo almacena en $f12 que es el utilizado para impresion
	
	li 	$v0, 2 # Imprime float
	syscall
