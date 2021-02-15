# Arquitectura MIPS
	.data
	
pi: 	.float	3.1415 # tambien podria ser double, que es precision doble

	.text
	
	li $v0,6 # 5 es para lectura desde la consola, el valor se guarda en la posicion $f0
	syscall
	
	l.s	$f2, pi # Carga pi en $f2
	mul.s	$f4, $f0, $f0 # Multiplica radio * radio
	
	mul.s	$f12, $f2, $f4 # Multiplica radio^2 * pi
	
	li 	$v0, 2 # Imprime float
	syscall
